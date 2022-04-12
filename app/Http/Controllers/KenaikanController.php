<?php

namespace App\Http\Controllers;

use App\Models\Kelas;
use App\Models\Siswa;
use App\Models\Jurusan;
use Illuminate\Http\Request;
use App\Models\TahunAkademik;
use Yajra\DataTables\Facades\DataTables;

class KenaikanController extends Controller
{

    public function index()
    {
        $kelas = Kelas::with(['jurusan'])->orderBy('kelas', 'ASC')->get();
        $tahunakademik = TahunAkademik::orderBy('id', 'ASC')->get();
        $jurusan = Jurusan::orderBy('id', 'ASC')->get();
        return view('backend.kenaikan.index', compact('kelas', 'tahunakademik', 'jurusan'));
    }

    public function update(Request $request, $id)
    {
        $kelas = Kelas::find($request->kelas);
        foreach($request->id as $row){
            if($request->kelas == 'lulus'){
                $siswa = Siswa::with(['jurusan'])->find($row);
                $siswa->update([
                    'status' => 'Lulus'
                ]);
            }else{
                $siswa = Siswa::with(['jurusan'])->find($row);
                $siswa->update([
                    'kelas_id' => $request->kelas,
                    'jurusan_id' => $kelas->jurusan_id,
                ]);
            }
        }

        if($request->kelas == 'lulus'){
            return response()->json([
                'success' =>
                count($request->id) .
                ' siswa berhasil dinaikkan di luluskan'
            ]);
        }else{
            return response()->json([
                'success' =>
                count($request->id) .
                ' siswa berhasil dinaikkan ke kelas '
                . $kelas->kelas . '  '  . $kelas->nama .
                '  ' .$kelas->jurusan->nama.
                '  ' .$kelas->urut_kelas
            ]);
        }

    }

    public function datatable(Request $request)
    {
        $data = Siswa::select('*')
                        ->with(['kelas', 'tahunakademik', 'jurusan'])
                        ->filter($request->filter)
                        ->order($request->filter);
        return DataTables::of($data)
                            ->addindexColumn()
                            ->addColumn('foto', function($data){
                                return '<img src="' .asset($data->foto). '" class="rounded-circle shadow-lg img-thumbnail" style="height: 60px; width:60px; object-fit:cover;object-position:top;">';
                            })
                            ->addColumn('kelas', function($data){
                                return $data->kelas->kelas . ' ' . $data->jurusan->nama . ' ' . $data->kelas->urut_kelas;
                            })
                            ->addColumn('tahun_akademik', function($data){
                                return tahun($data->tahunakademik->awal). ' - ' .tahun($data->tahunakademik->akhir);
                            })
                            ->rawColumns(['foto', 'tahun_akademik'])
                            ->make(true);
    }
}
