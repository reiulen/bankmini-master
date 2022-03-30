<?php

namespace App\Http\Controllers;

use App\Models\Kelas;
use App\Models\Siswa;
use App\Models\Jurusan;
use App\Models\DanaAwal;
use Illuminate\Http\Request;
use App\Models\TahunAkademik;
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
        $data = Siswa::with(['kelas', 'tahunakademik'])->orderBy('nis', 'DESC')->get();
        if($request->filter){
            $data = Siswa::with(['kelas', 'tahunakademik'])
            ->filter($request->filter)
            ->order($request->filter)
            ->get();
        }
        return DataTables::of($data)
                            ->addindexColumn()
                            ->addColumn('kelas', function($data){
                                return $data->kelas->kelas . ' ' . $data->kelas->jurusan->nama . ' ' . $data->kelas->urut_kelas;
                            })
                            ->rawColumns(['kelas'])
                            ->make(true);
    }
}
