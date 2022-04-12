<?php

namespace App\Http\Controllers;

use PDF;
use App\Models\Kelas;
use App\Models\Siswa;
use App\Models\Jurusan;
use Illuminate\Http\Request;
use App\Models\TabunganSiswa;
use App\Models\TahunAkademik;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Support\Facades\Cache;
use App\Exports\LaporanTabunganExport;
use Yajra\DataTables\Facades\DataTables;

class PemasukanController extends Controller
{
    public function index(){
        $kelas = Kelas::with(['jurusan'])->orderBy('kelas', 'ASC')->get();
        $tahunakademik = TahunAkademik::orderBy('id', 'ASC')->get();
        $jurusan = Jurusan::orderBy('id', 'ASC')->get();
        $tabungan = TabunganSiswa::with(['petugas'])->orderBy('id', 'DESC')->get();
        return view('backend.laporantabungan.index', compact('tabungan', 'kelas', 'tahunakademik', 'jurusan'));
    }

    public function datatable(Request $request)
    {
        $tabungan = TabunganSiswa::with(['petugas'])->get();
        $data = Siswa::with(['kelas', 'tahunakademik', 'jurusan'])
                        ->filter($request->filter)
                        ->order($request->filter);
        if($request->sisa_saldo){
            $siswa = Siswa::select('id')
                ->FilterTable($request)
                ->get();
            $tabungandata = $tabungan->whereIn('siswa_id', $siswa->pluck('id')->toArray());
            $debit = $tabungandata->where('tipe', '1')->sum('nominal');
            $kredit = $tabungandata->where('tipe', '2')->sum('nominal');
            $total = $debit - $kredit;
            return response()->json($total);
        }
        return DataTables::of($data)
                            ->addindexColumn()
                            ->addColumn('debit', function($data) use ($tabungan){
                                $tabungan = $tabungan->where('siswa_id', $data->id)->where('tipe','1')->sum('nominal');
                                return format_rupiah($tabungan);
                            })
                            ->addColumn('kredit', function($data) use ($tabungan){
                                $tabungan = $tabungan->where('siswa_id', $data->id)->where('tipe','2')->sum('nominal');
                                return $tabungan;
                            })
                            ->addColumn('kelas', function($data){
                                return $data->kelas->kelas . ' ' . $data->jurusan->nama . ' ' . $data->kelas->urut_kelas;
                            })
                            ->addColumn('saldo', function($data) use ($tabungan){
                                $debit = $tabungan->where('siswa_id', $data->id)->where('tipe','1')->sum('nominal');
                                $kredit = $tabungan->where('siswa_id', $data->id)->where('tipe','2')->sum('nominal');
                                $saldo = $debit - $kredit;
                                return format_rupiah($saldo);
                            })
                            ->rawColumns(['debit','kredit','kelas', 'saldo'])
                            ->make(true);
    }

    public function cetak(Request $request)
    {
        $data = Siswa::with(['kelas', 'tahunakademik', 'jurusan'])
                ->filtercetak($request)
                ->ordercetak($request);
        $tabungan = TabunganSiswa::with(['petugas']);

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
        $cetak = 'LaporanTabunganSiswa' . $kelasc . ' ' . $jurusanc . ' ' . $tahunakademikc . '.pdf';

        $pdf = PDF::loadview('backend.laporantabungan.cetak',
                compact('data', 'tabungan', 'kelas', 'tahunakademik', 'jurusan'))
                ->setPaper('f4', 'portrait');
        return $pdf->stream($cetak);
        // return view('backend.laporantabungan.cetak',  compact('data', 'tabungan', 'kelas', 'tahunakademik', 'jurusan'));
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
            $tahunakademik = 'TahunAkademik ' . tahun($tahunakademik->awal). ' - ' .tahun($tahunakademik->akhir);
        }else{
            $tahunakademik = '';
        }
        $cetak = 'LaporanTabunganSiswa' . $jurusan . ' ' . $kelas . ' ' . $tahunakademik . ' ' . tanggal(date('d-m-Y')) . '.xlsx';
        return Excel::download(new LaporanTabunganExport($request), $cetak);
    }
}
