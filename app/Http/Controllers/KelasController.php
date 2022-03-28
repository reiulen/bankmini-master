<?php

namespace App\Http\Controllers;

use App\Models\Kelas;
use App\Models\Jurusan;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;
use Illuminate\Support\Facades\Validator;

class KelasController extends Controller
{
    public function getData($id)
    {
        $kelas = Kelas::with(['jurusan'])->findorfail($id);
        return response()->json($kelas);
    }

    public function index()
    {
        $jurusan = Jurusan::latest()->get();
        return view('backend.kelas.index', compact('jurusan'));
    }

    public function store(Request $request)
    {
        $validasi = Validator::make($request->all(),[
            'kelas' => 'required',
            'jurusan' => 'required',
            'urut_kelas' => 'required',
        ]);

        if($validasi->fails()){
            return response()->json([
                'error' => $validasi->errors(),
            ]);
        }

        $kelas = Kelas::find($request->id);
        $jurusan = Jurusan::find($request->jurusan);
        if($kelas){
            $kelas->update([
                'kelas' => $request->kelas,
                'jurusan_id' => $jurusan->id,
                'urut_kelas' => $request->urut_kelas,
            ]);
        }else{
            Kelas::create([
                'kelas' => $request->kelas,
                'jurusan_id' => $jurusan->id,
                'urut_kelas' => $request->urut_kelas,
            ]);
        }

        return response()->json([
            'success' => 'Data ' .  $request->kelas . ' ' . $jurusan->jurusan . ' ' .  $request->urut_kelas  . ' berhasil disimpan'
        ]);
    }


    public function destroy($id)
    {
        $kelas = Kelas::with(['jurusan'])->find($id);
        $kelas->delete($id);
        return response()->json([
            'success' => 'Data ' .  $kelas->kelas . ' ' . $kelas->jurusan->jurusan . ' ' .  $kelas->urut_kelas  . ' berhasil dihapus'
        ]);
    }

    public function data()
    {
        $data = Kelas::with(['jurusan'])->orderBy('kelas', 'DESC')->get();
        return DataTables::of($data)
                           ->addindexColumn()
                           ->addColumn('jurusan', function($data){
                                return $data->jurusan->jurusan . ' ' . $data->urut_kelas;
                           })
                           ->addColumn('nama_kelas', function($data){
                                return $data->jurusan->nama . ' ' . $data->urut_kelas;
                           })
                           ->addColumn('aksi', function($data){
                              return '<div class="dropdown">
                                            <button class="btn btn-none" id="edit'.$data->id.'" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <i class="fas fa-ellipsis-v"></i>
                                            </button>
                                            <div class="dropdown-menu dropdown-menu-right border-0" aria-labelledby="edit'.$data->id .'">
                                                <a class="dropdown-item btn-edit" data-id="'.$data->id.'"><i class="fas fa-pencil-alt text-primary pr-1" ></i> Edit</a>
                                                <a class="dropdown-item btn-hapus" role="button" data-id="'.$data->id.'" data-nama="'.$data->kelas.' '.$data->jurusan->jurusan . ' ' .$data->urut_kelas . '"><i class="fas fa-trash text-danger pr-1"></i> Hapus</a>
                                            </div>
                                        </div>
                                    ';
                           })
                           ->rawColumns(['aksi','jurusan', 'nama_kelas'])
                           ->make(true);
    }
}
