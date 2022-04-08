<?php

namespace App\Http\Controllers;

use PDF;
use App\Models\Kelas;
use App\Models\Siswa;
use App\Models\Jurusan;
use App\Models\DanaAwal;
use Illuminate\Http\Request;
use App\Models\TahunAkademik;
use App\Models\PembayaranSiswa;
use Maatwebsite\Excel\Facades\Excel;
use App\Exports\LaporanTunggakanExport;
use Yajra\DataTables\Facades\DataTables;

class TunggakanController extends Controller
{
    public function index()
    {
        $kelas = Kelas::with(['jurusan'])->orderBy('kelas', 'ASC')->get();
        $tahunakademik = TahunAkademik::orderBy('id', 'ASC')->get();
        $jurusan = Jurusan::orderBy('id', 'ASC')->get();
        $dana = DanaAwal::orderBy('dana', 'asc')->get();
        return view('backend.laporantunggakan.index', compact('kelas', 'tahunakademik', 'jurusan', 'dana'));
    }

    public function datatable(Request $request)
    {
        $data = Siswa::with(['kelas', 'tahunakademik', 'jurusan'])
            ->filter($request->filter)
            ->order($request->filter)
            ->get();
        return DataTables::of($data)
                            ->addindexColumn()
                            ->addColumn('kelas', function($data){
                                return $data->kelas->kelas . ' ' . $data->jurusan->nama . ' ' . $data->kelas->urut_kelas;
                            })
                            ->rawColumns(['kelas'])
                            ->make(true);
    }

    public function table(Request $request)
    {
        $dana = DanaAwal::where('tahun_akademik_id', $request->tahun_akademik)->orderBy('dana', 'asc')->get();
        $siswa = Siswa::with(['kelas', 'tahunakademik'])->FilterTable($request)->get();
        $pembayaran = PembayaranSiswa::FilterTable($request)->where('tahun_akademik_id', $request->tahun_akademik)->get();
        return view('backend.laporantunggakan.tunggakan', compact('dana', 'siswa', 'pembayaran'));
    }

    public function cetak(Request $request)
    {
        $dana = DanaAwal::where('tahun_akademik_id', $request->tahun_akademik)->orderBy('dana', 'asc')->get();
        $siswa = Siswa::with(['kelas', 'tahunakademik'])->FilterTable($request)->get();
        $pembayaran = PembayaranSiswa::FilterTable($request)->where('tahun_akademik_id', $request->tahun_akademik)->get();

        $kelas = [];
        $jurusan = [];
        $tahunakademik = [];
        $kelasc = '';
        $jurusanc = '';
        $tahunakademikc = '';

        if($request->kelas){
            $kelas = Kelas::with(['jurusan'])->find($request->kelas);
            $kelasc = $kelas->kelas . ' ' . $kelas->jurusan->nama .' '. $kelas->urut_kelas;
        }
        if($request->tahun_akademik){
            $tahunakademik = TahunAkademik::find($request->tahun_akademik);
            $tahunakademikc = 'TA ' . tahun($tahunakademik->awal). ' - ' .tahun($tahunakademik->akhir);
        }
        if($request->jurusan){
            $jurusan = Jurusan::find($request->jurusan);
            $jurusanc = $jurusan->jurusan;
        }
        $cetak = 'LaporanTunggakanSiswa' . $kelasc . ' ' . $jurusanc . ' ' . $tahunakademikc . '.pdf';

        $pdf = PDF::loadview('backend.laporantunggakan.cetak',
                compact('dana', 'siswa', 'kelas', 'tahunakademik', 'jurusan', 'pembayaran'))
                ->setPaper('f4', 'landscape');;
        return $pdf->stream($cetak);
        // return view('backend.laporantunggakan.cetak',  compact('dana', 'siswa', 'kelas', 'tahunakademik', 'jurusan', 'pembayaran'));
    }

    public function export(Request $request)
    {
        $jurusan = Jurusan::find($request->jurusan);
        $kelas = Kelas::with(['jurusan'])->find($request->kelas);
        $tahunakademik = TahunAkademik::find($request->tahun_akademik);

        if($jurusan){
            $jurusan = $jurusan->jurusan;
        }else{
            $jurusan = '';
        }
        if($kelas){
            $kelas = $kelas->kelas . ' ' . $kelas->jurusan->nama .' '. $kelas->urut_kelas;
        }else{
            $kelas = '';
        }
        if($tahunakademik){
            $tahunakademik = 'TA ' . tahun($tahunakademik->awal). ' - ' .tahun($tahunakademik->akhir);
        }else{
            $tahunakademik = '';
        }
        $cetak = 'LaporanTunggaknSiswa' . $jurusan . ' ' . $kelas . ' ' . $tahunakademik . ' ' . tanggal(date('d-m-Y')) . '.xlsx';
        return Excel::download(new LaporanTunggakanExport($request), $cetak);
    }
}
