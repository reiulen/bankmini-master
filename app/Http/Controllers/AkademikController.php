<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\TahunAkademik;
use Yajra\DataTables\Facades\DataTables;
use Illuminate\Support\Facades\Validator;

class AkademikController extends Controller
{
    public function index()
    {
        $akademik = TahunAkademik::get();
        return view('backend.tahunakademik.index', compact('akademik'));
    }

    public function store(Request $request)
    {
        $validasi = Validator::make($request->all(),[
            'tanggal_awal' => 'required',
            'tanggal_akhir' => 'required',
            'id' => 'required'
        ]);

        if($validasi->fails()){
            return response()->json([
                'error' => $validasi->errors(),
            ]);
        }

        $akademik = TahunAkademik::find($request->id);
        if($akademik){
            $akademik->update([
                'awal' => $request->tanggal_awal,
                'akhir' => $request->tanggal_akhir,
            ]);
        }else{
            TahunAkademik::create([
                'awal' => $request->tanggal_awal,
                'akhir' => $request->tanggal_akhir,
            ]);
        };

        return response()->json([
            'success' => 'Tahun akademik'. bulan($request->tanggal_awal). ' sampai ' . bulan($request->tanggal_akhir) . ' berhasil disimpan',
        ]);
    }

    public function destroy($id)
    {
        $ta = TahunAkademik::findorfail($id);
        $ta->delete($id);
         return response()->json([
            'success' => 'Tahun akademik'. bulan($ta->awal). ' sampai ' . bulan($ta->akhir) . ' berhasil dihapus',
        ]);
    }

    public function data(){
        $data = TahunAkademik::latest()->get();
        return DataTables::of($data)
                           ->addindexColumn()
                           ->addColumn('tgl_awal', function($data){
                                return bulan($data->awal);
                           })
                           ->addColumn('tgl_akhir', function($data){
                                return bulan($data->akhir);
                           })
                           ->addColumn('aksi', function($data){
                               return '<div class="dropdown">
                                            <button class="btn btn-none" id="edit'.$data->id.'" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <i class="fas fa-ellipsis-v"></i>
                                            </button>
                                            <div class="dropdown-menu dropdown-menu-right border-0" aria-labelledby="edit'.$data->id.'">
                                                <a class="dropdown-item btn-edit" data-id="'.$data->id.'" data-awal="'.$data->awal.'" data-akhir="'.$data->akhir.'"><i class="fas fa-pencil-alt text-primary pr-1" ></i> Edit</a>
                                                <a class="dropdown-item btn-hapus" role="button" data-id="'.$data->id.'" data-nama="'.bulan($data->awal).' sampai '.bulan($data->akhir).'"><i class="fas fa-trash text-danger pr-1"></i> Hapus</a>
                                            </div>
                                        </div>';
                           })
                           ->rawColumns(['aksi','tgl_awal', 'tgl_akhir'])->make(true);
    }
}
