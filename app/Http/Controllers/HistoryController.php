<?php

namespace App\Http\Controllers;

use PDF;
use App\Models\User;
use App\Models\Kelas;
use App\Models\Siswa;
use App\Models\Jurusan;
use App\Models\DanaAwal;
use Illuminate\Http\Request;
use App\Models\TabunganSiswa;
use App\Models\TahunAkademik;
use App\Models\PembayaranSiswa;
use Illuminate\Support\Facades\Auth;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Support\Facades\Cache;
use App\Exports\HistoryTabunganExport;
use App\Exports\HistoryPembayaranExport;
use Yajra\DataTables\Facades\DataTables;

class HistoryController extends Controller
{
    public function index()
    {
        // $petugas = User::with(['roles:id,name'])->whereHas('roles', function($query){
        //     return $query->where('name', '!=', 'Operator');
        // })->orderBy('nama', 'ASC')->get();
        $kelas = Kelas::with(['jurusan'])->orderBy('kelas', 'ASC')->get();
        $petugas = User::orderBy('nama', 'ASC')->get();
        if(Auth::guard('siswa')->user()){
            $tabungan = TabunganSiswa::with(['petugas'])->where('siswa_id', Auth::guard('siswa')->user()->id)->orderBy('id', 'DESC')->get();
        }else{
            $tabungan = TabunganSiswa::with(['petugas'])->orderBy('id', 'DESC')->get();
        }
        return view('backend.history.tabungan', compact('tabungan', 'kelas', 'petugas'));
    }

    public function datatable(Request $request)
    {
        $tanggal = [$request->dari, $request->sampai];
        if(Auth::guard('siswa')->user()){
             $data =  TabunganSiswa::select('*')
                                    ->with(['petugas', 'siswa'])
                                    ->where('siswa_id', Auth::guard('siswa')->user()->id)
                                    ->tanggal($tanggal)
                                    ->filter($request->filter)
                                    ->order($request->filter)
                                    ->latest();
        }else{
            $data =  TabunganSiswa::select('*')
                                    ->with(['petugas', 'siswa'])
                                    ->tanggal($tanggal)
                                    ->filter($request->filter)
                                    ->order($request->filter)
                                    ->latest();
        }
            return DataTables::of($data)
                            ->addIndexColumn()
                            ->addColumn('tanggal', function($data){
                                return tanggal($data->created_at);
                            })
                            ->addColumn('tipe', function($data){
                                if($data->tipe == 1){
                                    return '<span class="badge badge-success rounded- px-3 py-2">Debit</span>';
                                }else{
                                    return '<span class="badge badge-danger rounded- px-3 py-2">Kredit</span>';
                                }
                            })
                            ->addColumn('nominal', function($data){
                                return format_rupiah($data->nominal);
                            })->addColumn('saldo', function($data){
                                return format_rupiah($data->sisa_saldo);
                            })
                            ->rawColumns(['tanggal', 'tipe', 'nominal', 'sisa_tagihan'])
                            ->make(true);
    }

    public function cetaktabunganpdf(Request $request)
    {
        $tanggal = [$request->dari, $request->sampai];
        if(Auth::guard('siswa')->user()){
             $data =  TabunganSiswa::select('*')
                                    ->with(['petugas', 'siswa'])
                                    ->where('siswa_id', Auth::guard('siswa')->user()->id)
                                    ->tanggal($tanggal)
                                    ->FilterCetak($request)
                                    ->latest()
                                    ->get();
        }else{
            $data =  TabunganSiswa::select('*')
                                    ->with(['petugas', 'siswa'])
                                    ->tanggal($tanggal)
                                    ->FilterCetak($request)
                                    ->latest()
                                    ->get();
        }

        $kelas = [];
        $kelasc = '';

        if($request->kelas){
            $kelas = Kelas::with(['jurusan'])->find($request->kelas);
            $kelasc = $kelas->kelas . ' ' . $kelas->jurusan->nama .' '. $kelas->urut_kelas;
        }
        $cetak = 'HistoryTabunganSiswa' . $kelasc . '.pdf';

        $pdf = PDF::loadview('backend.history.cetaktabungan', compact('data', 'kelas'))
                    ->setPaper('f4', 'portrait');
        return $pdf->stream($cetak);
    }

    public function cetaktabunganexcel(Request $request)
    {
        $kelas = Kelas::with(['jurusan'])->find($request->kelas);
        if($kelas){
            $kelas = $kelas->kelas . ' ' . $kelas->jurusan->nama .' '. $kelas->urut_kelas;
        }else{
            $kelas = '';
        }

        $cetak = 'HistoryTabunganSiswa' . $kelas . tanggal(date('d-m-Y')) . '.xlsx';
        return Excel::download(new HistoryTabunganExport($request), $cetak);
    }

    public function cetakkwitansitabungan(Request $request)
    {
        $siswa = Auth::guard('siswa')->user();
        $cetak = explode(',', $request->cetak);
        $tabungan = TabunganSiswa::with(['siswa', 'kelas'])
                                   ->whereIn('id', $cetak)
                                   ->where('siswa_id', $siswa->id)
                                   ->latest()
                                   ->get();

        $cetak = 'TabunganSiswa' . $siswa->nama . '.pdf';


        // return view('backend.siswa.tabungan.cetak', compact('tabungan'));
        $pdf = PDF::loadview('backend.siswa.tabungan.cetak', compact('tabungan', 'siswa'))
                    ->setPaper('f4', 'portrait');
        return $pdf->stream($cetak);
    }


    public function indexPembayaran()
    {
        // $petugas = User::with(['roles:id,name'])->whereHas('roles', function($query){
        //     return $query->where('name', '!=', 'Operator');
        // })->orderBy('nama', 'ASC')->get();
        $petugas = User::orderBy('nama', 'ASC')->get();
        $dana = DanaAwal::latest()->get();
        return view('backend.history.pembayaran', compact('petugas', 'dana'));
    }

    public function dataTablePembayaran(Request $request)
    {
        $tanggal = [$request->dari, $request->sampai];
        if(Auth::guard('siswa')->user()){
           $data =  PembayaranSiswa::select('id','created_at', 'siswa_id', 'dana_awal_id', 'petugas_id', 'nominal', 'sisa_tagihan', 'keterangan')
                                    ->with(['petugas', 'danaawal', 'siswa'])
                                    ->where('siswa_id', Auth::guard('siswa')->user()->id)
                                    ->filter($request->filter)
                                    ->tanggal($tanggal)
                                    ->order($request->filter)
                                    ->latest();
        }else{
            $data =  PembayaranSiswa::select('created_at', 'siswa_id', 'dana_awal_id', 'petugas_id', 'nominal', 'sisa_tagihan', 'keterangan')
                                    ->with(['petugas', 'danaawal', 'siswa'])
                                    ->filter($request->filter)
                                    ->tanggal($tanggal)
                                    ->order($request->filter)
                                    ->latest();
        }
        return DataTables::of($data)
                         ->addIndexColumn()
                         ->addColumn('tanggal', function($data){
                             return tanggal($data->created_at);
                         })
                         ->addColumn('nominal', function($data){
                             return format_rupiah($data->nominal);
                         })->addColumn('sisa_tagihan', function($data){
                            return format_rupiah($data->sisa_tagihan);
                         })->rawColumns(['tanggal', 'nominal', 'sisa_tagihan'])
                           ->make(true);
    }


    public function cetakpembayaranpdf(Request $request)
    {
        $tanggal = [$request->dari, $request->sampai];
        if(Auth::guard('siswa')->user()){
           $data =  PembayaranSiswa::select('id','created_at', 'siswa_id', 'dana_awal_id', 'petugas_id', 'nominal', 'sisa_tagihan', 'keterangan')
                                    ->with(['petugas', 'danaawal', 'siswa'])
                                    ->where('siswa_id', Auth::guard('siswa')->user()->id)
                                    ->FilterTable($request)
                                    ->tanggal($tanggal)
                                    ->latest()
                                    ->get();
        }else{
            $data =  PembayaranSiswa::select('created_at', 'siswa_id', 'dana_awal_id', 'petugas_id', 'nominal', 'sisa_tagihan', 'keterangan')
                                    ->with(['petugas', 'danaawal', 'siswa'])
                                    ->FilterTable($request)
                                    ->tanggal($tanggal)
                                    ->latest()
                                    ->get();
        }

        $kelas = [];
        $kelasc = '';

        if($request->kelas){
            $kelas = Kelas::with(['jurusan'])->find($request->kelas);
            $kelasc = $kelas->kelas . ' ' . $kelas->jurusan->nama .' '. $kelas->urut_kelas;
        }
        $cetak = 'HistoryPembayaranSiswa' . $kelasc . '.pdf';

        $pdf = PDF::loadview('backend.history.cetakpembayaran', compact('data', 'kelas'))
                    ->setPaper('f4', 'portrait');
        return $pdf->stream($cetak);
    }

    public function cetakpembayaranexcel(Request $request)
    {
        $kelas = Kelas::with(['jurusan'])->find($request->kelas);
        if($kelas){
            $kelas = $kelas->kelas . ' ' . $kelas->jurusan->nama .' '. $kelas->urut_kelas;
        }else{
            $kelas = '';
        }

        $cetak = 'HistoryPembayaranSiswa' . $kelas . tanggal(date('d-m-Y')) . '.xlsx';
        return Excel::download(new HistoryPembayaranExport($request), $cetak);
    }


    public function tagihan(){
        $siswa = Siswa::where('nis', Auth::guard('siswa')->user()->nis)->firstorfail();
        $dana = DanaAwal::where(['tahun_akademik_id' => $siswa->tahun_akademik_id])->latest()->get();
        $pembayaran = PembayaranSiswa::with(['danaawal'])->get();
        $tipe = 'tagihan';
        return view('backend.siswa.pembayaran.tagihan', compact('siswa', 'dana', 'pembayaran', 'tipe'));
    }

    public function cetakkwitansipembayaran(Request $request)
    {
        $siswa = Auth::guard('siswa')->user();
        $cetak = explode(',', $request->cetak);
        $pembayaran = PembayaranSiswa::with(['siswa', 'kelas'])
                                   ->whereIn('id', $cetak)
                                   ->where('siswa_id', $siswa->id)
                                   ->latest()
                                   ->get();

        $cetak = 'PembayaranSiswa' . $siswa->nama . '.pdf';


        // return view('backend.siswa.tabungan.cetak', compact('tabungan'));
        $pdf = PDF::loadview('backend.siswa.pembayaran.cetak', compact('pembayaran', 'siswa'))
                    ->setPaper('f4', 'portrait');
        return $pdf->stream($cetak);
    }
}
