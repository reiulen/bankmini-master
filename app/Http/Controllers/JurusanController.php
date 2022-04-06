<?php

namespace App\Http\Controllers;

use App\Models\Jurusan;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;
use Illuminate\Support\Facades\Validator;

class JurusanController extends Controller
{
    public function getData($id)
    {
        $jurusan = Jurusan::findorfail($id);
        return response()->json($jurusan);
    }

    public function index()
    {
        return view('backend.jurusan.index');
    }

    public function store(Request $request)
    {
         $validasi = Validator::make($request->all(),[
            'jurusan' => 'required',
            'nama' => 'required',
            'id' => 'required'
        ]);

        if($validasi->fails()){
            return response()->json([
                'error' => $validasi->errors(),
            ]);
        }

        $jurusan = Jurusan::find($request->id);
        if($jurusan ){
            $jurusan->update([
                'jurusan' => $request->jurusan,
                'nama' => $request->nama
            ]);
        }else{
            Jurusan::create([
                'jurusan' => $request->jurusan,
                'nama' => $request->nama
            ]);
        };

        return response()->json([
            'success' => 'Jurusan ' .$request->jurusan. ' berhasil disimpan',
        ]);
    }

    public function destroy($id)
    {
        $jurusan = Jurusan::findorfail($id);
        $jurusan->delete($id);
        return response()->json([
            'success' => 'Jurusan ' .$jurusan->jurusan. ' berhasil dihapus',
        ]);
    }

    public function data()
    {
        $data = Jurusan::latest()->get();
         return DataTables::of($data)
                           ->addindexColumn()
                           ->make(true);
    }
}
