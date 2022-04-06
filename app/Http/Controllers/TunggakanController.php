<?php

namespace App\Http\Controllers;

use App\Models\Kelas;
use App\Models\Siswa;
use App\Models\Jurusan;
use App\Models\DanaAwal;
use Illuminate\Http\Request;
use App\Models\TahunAkademik;
use App\Models\PembayaranSiswa;
use Yajra\DataTables\Facades\DataTables;

class TunggakanController extends Controller
{
    public function index()
    {
        $kelas = Kelas::with(['jurusan'])->orderBy('kelas', 'ASC')->get();
        $tahunakademik = TahunAkademik::orderBy('id', 'ASC')->get();
        $jurusan = Jurusan::orderBy('id', 'ASC')->get();
        $dana = DanaAwal::orderBy('id', 'desc')->get();
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
        $dana = DanaAwal::where('tahun_akademik_id', $request->tahun_akademik)->orderBy('id', 'desc')->get();
        $siswa = Siswa::with(['kelas', 'tahunakademik'])->FilterTable($request)->get();
        $pembayaran = PembayaranSiswa::FilterTable($request)->where('tahun_akademik_id', $request->tahun_akademik)->get();
        return view('backend.laporantunggakan.tunggakan', compact('dana', 'siswa', 'pembayaran'));
    }
}
