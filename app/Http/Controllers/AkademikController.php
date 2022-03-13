<?php

namespace App\Http\Controllers;

use App\Models\TahunAkademik;
use Illuminate\Http\Request;

class AkademikController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $akademik = TahunAkademik::get();
        return view('backend.tahunakademik.index', compact('akademik'));
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
            'tanggal_awal' => 'required',
            'tanggal_akhir' => 'required',
        ], $message);

        TahunAkademik::create([
            'awal' => $request->tanggal_awal,
            'akhir' => $request->tanggal_akhir,
        ]);
        return redirect(route('tahunakademik.index'))->with([
            'pesan' => 'Data berhasil ditambahkan',
            'pesan1' => 'Data ' . bulan($request->tanggal_awal). ' sampai ' . bulan($request->tanggal_akhir) . ' berhasil ditambahkan',
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $akademik = TahunAkademik::findorfail($id);
        return view('backend.tahunakademik.index', compact('akademik'));
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
            'tanggal_awal' => 'required',
            'tanggal_akhir' => 'required',
        ], $message);


        $user = TahunAkademik::find($id);

        $user->update([
            'awal' => $request->tanggal_awal,
            'akhir' => $request->tanggal_akhir,
        ]);
        return redirect(route('tahunakademik.index'))->with([
            'pesan' => 'Data berhasil diedit',
            'pesan1' => 'Data ' . bulan($request->tanggal_awal). ' sampai ' . bulan($request->tanggal_akhir) . ' berhasil diedit',
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $ta = TahunAkademik::findorfail($id);
        $ta->delete($id);
        return back()->with([
            'pesan' => 'Data berhasil dihapus',
            'pesan1' => 'Data ' . bulan($ta->tanggal_awal). ' sampai ' . bulan($ta->tanggal_akhir) . ' berhasil dihapus',
        ]);
    }
}
