<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\DanaAwal;
use App\Models\Kelas;
use App\Models\TahunAkademik;

class DanaAwalController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {  
        $d_awal = DanaAwal::with(['kelas'])->latest()->get();
        $t_akademik = TahunAkademik::latest()->get();
        $kelas = Kelas::latest()->get();
        return view('backend.danaawal.index', compact('d_awal', 't_akademik', 'kelas'));
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
            'required' => 'Tidak boleh kosong',
        ];

        $request->validate([
            'tahun_akademik' => 'required',
            'kelas' => 'required',
            'danaawaltahun' => 'required',
            'nominal' => 'required'
        ], $message);

        DanaAwal::create([
            'tahun_akademik_id' => $request->tahun_akademik,
            'kelas_id' => $request->kelas,
            'dana_awal_tahun' => $request->danaawaltahun,
            'nominal' => $request->nominal
        ]);

        return redirect(route('danaawal.index'))->with([
            'pesan' => 'Data berhasil ditambahkan',
            'pesan1' => 'Data ' . $request->danaawaltahun . ' sebesar ' . $request->nominal . ' berhasil ditambahkan'
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
        //
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
        $d_awal = DanaAwal::findorFail($id);

        $message = [
            'required' => 'Tidak boleh kosong',
        ];

        $request->validate([
            'tahun_akademik' => 'required',
            'kelas' => 'required',
            'danaawaltahun' => 'required',
            'nominal' => 'required'
        ], $message);

        $d_awal->update([
            'tahun_akademik_id' => $request->tahun_akademik,
            'kelas_id' => $request->kelas,
            'dana_awal_tahun' => $request->danaawaltahun,
            'nominal' => $request->nominal
        ]);

        return redirect(route('danaawal.index'))->with([
            'pesan' => 'Data berhasil diedit',
            'pesan1' => 'Data ' . $request->danaawaltahun . ' ' . $d_awal->kelas->kelas 
            . ' ' . $d_awal->kelas->nama_kelas . ' '. 
            $d_awal->kelas->urut_kelas .' berhasil diedit'
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
        $d_awal = DanaAwal::findorFail($id);
        $d_awal->delete($id);
        return redirect(route('danaawal.index'))->with([
            'pesan' => 'Data berhasil dihapus',
            'pesan1' => 'Data ' . $d_awal->danaawaltahun . ' ' . $d_awal->kelas->kelas 
            . ' ' . $d_awal->kelas->nama_kelas . ' '. 
            $d_awal->kelas->urut_kelas .' berhasil dihapus'
        ]);
    }
}
