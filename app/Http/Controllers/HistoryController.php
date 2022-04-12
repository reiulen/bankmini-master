<?php

namespace App\Http\Controllers;

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
use Illuminate\Support\Facades\Cache;
use Yajra\DataTables\Facades\DataTables;

class HistoryController extends Controller
{
    public function index()
    {
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

    public function indexPembayaran()
    {
        $petugas = User::orderBy('nama', 'ASC')->get();
        $dana = DanaAwal::latest()->get();
        $pembayaran = PembayaranSiswa::select('id','nominal', 'siswa_id')->get();
        return view('backend.history.pembayaran', compact('petugas', 'dana', 'pembayaran'));
    }

    public function dataTablePembayaran(Request $request)
    {
        $tanggal = [$request->dari, $request->sampai];
        if(Auth::guard('siswa')->user()){
           $data =  PembayaranSiswa::select('*')
                                    ->with(['petugas', 'danaawal', 'siswa'])
                                    ->where('siswa_id', Auth::guard('siswa')->user()->id)
                                    ->filter($request->filter)
                                    ->tanggal($tanggal)
                                    ->order($request->filter)
                                    ->latest();
        }else{
            $data =  PembayaranSiswa::select('*')
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

    public function tagihan(){
        $siswa = Siswa::where('nis', Auth::guard('siswa')->user()->nis)->firstorfail();
        $dana = DanaAwal::where(['tahun_akademik_id' => $siswa->tahun_akademik_id])->latest()->get();
        $pembayaran = PembayaranSiswa::with(['danaawal'])->get();
        return view('backend.siswa.pembayaran.tagihan', compact('siswa', 'dana', 'pembayaran'));
    }
}
