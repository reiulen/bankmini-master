<?php

namespace App\Http\Controllers;

use App\Models\Kelas;
use App\Models\DanaAwal;
use Illuminate\Http\Request;
use App\Models\TahunAkademik;
use Yajra\DataTables\Facades\DataTables;
use Illuminate\Support\Facades\Validator;

class DanaAwalController extends Controller
{
    public function getData($id)
    {
        $dana = DanaAwal::with(['tahunakademik'])->findorFail($id);
        return response()->json([
            'awal' => tahun($dana->tahunakademik->awal),
            'akhir' => tahun($dana->tahunakademik->akhir),
            'data' => $dana
        ]);
    }

    public function index()
    {
        $d_awal = DanaAwal::with(['kelas'])->latest()->get();
        $t_akademik = TahunAkademik::latest()->get();
        $kelas = Kelas::latest()->get();
        return view('backend.danaawal.index', compact('d_awal', 't_akademik', 'kelas'));
    }

    public function store(Request $request)
    {
         $validasi = Validator::make($request->all(),[
            'tahun_akademik' => 'required',
            'dana' => 'required',
            'nominal' => 'required'
        ]);

        if($validasi->fails()){
            return response()->json([
                'error' => $validasi->errors(),
            ]);
        }

        $danaawal = DanaAwal::find($request->id);
        $nominal = preg_replace("/[^0-9]/", "", $request->nominal);
        if($danaawal){
            $danaawal->update([
                'tahun_akademik_id' => $request->tahun_akademik,
                'dana' => $request->dana,
                'nominal' => $nominal
            ]);
        }else{
            DanaAwal::create([
                'tahun_akademik_id' => $request->tahun_akademik,
                'dana' => $request->dana,
                'nominal' => $nominal
            ]);
        }

        return response()->json([
            'success' => 'Data ' . $request->dana . ' sebesar ' . $request->nominal . ' berhasil disimpan'
        ]);
    }

    public function destroy($id)
    {
        $dana = DanaAwal::findorFail($id);
        $dana->delete($id);
        return response()->json([
            'success' => 'Data ' . $dana->dana . ' sebesar ' . format_rupiah($dana->nominal) . ' berhasil dihapus'
        ]);
    }

    public function data()
    {
        $data = DanaAwal::with(['tahunakademik'])->latest()->get();
        return DataTables::of($data)
                    ->addindexColumn()
                    ->addColumn('nominal', function($data){
                        return format_rupiah($data->nominal);
                    })
                    ->addColumn('tahun_akademik', function($data){
                        return tahun($data->tahunakademik->awal) . ' - ' . tahun($data->tahunakademik->akhir);
                    })
                    ->addColumn('aksi', function($data){
                         return '<div class="dropdown">
                                            <button class="btn btn-none" id="edit'.$data->id.'" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <i class="fas fa-ellipsis-v"></i>
                                            </button>
                                            <div class="dropdown-menu dropdown-menu-right border-0" aria-labelledby="edit'.$data->id .'">
                                                <a class="dropdown-item btn-edit" data-id="'.$data->id.'"><i class="fas fa-pencil-alt text-primary pr-1" ></i> Edit</a>
                                                <a class="dropdown-item btn-hapus" role="button" data-id="'.$data->id.'" data-nama="'.$data->dana. ' ' .tahun($data->tahunakademik->awal) . ' - ' . tahun($data->tahunakademik->akhir) .' sebesar ' . format_rupiah($data->nominal) .'"><i class="fas fa-trash text-danger pr-1"></i> Hapus</a>
                                            </div>
                                        </div>
                                    ';
                    })
                    ->rawColumns(['tahun_akademik', 'aksi'])
                    ->make(true);
    }
}
