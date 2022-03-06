<?php

namespace App\Http\Controllers;

use App\Models\Kelas;
use Illuminate\Http\Request;

class KelasController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $kelas = Kelas::get();
        return view('backend.kelas.index', compact('kelas'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $message = [
            'required' => 'tidak boleh kosong',
        ];
        $request->validate([
            'kelas' => 'required',
            'nama' => 'required',
            'nama_kelas' => 'required',
            'urut_kelas' => 'required',
        ], $message);

        Kelas::create([
            'kelas' => $request->kelas,
            'nama' => $request->nama,
            'nama_kelas' => $request->nama_kelas,
            'urut_kelas' => $request->urut_kelas,
        ]);
        return redirect(route('kelas.index'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $message = [
            'required' => 'tidak boleh kosong',
        ];
        $request->validate([
            'kelas' => 'required',
            'nama' => 'required',
            'nama_kelas' => 'required',
            'urut_kelas' => 'required',
        ], $message);

        $kelas = Kelas::find($id);

        $kelas->update([
            'kelas' => $request->kelas,
            'nama' => $request->nama,
            'nama_kelas' => $request->nama_kelas,
            'urut_kelas' => $request->urut_kelas,
        ]);
        return redirect(route('kelas.index'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
