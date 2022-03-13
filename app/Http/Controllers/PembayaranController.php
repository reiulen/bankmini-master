<?php

namespace App\Http\Controllers;

use App\Models\Siswa;
use App\Models\DanaAwal;
use App\Models\PembayaranSiswa;
use Illuminate\Auth\Events\Validated;
use Illuminate\Http\Request;

class PembayaranController extends Controller
{
    public function index($nis){
        $siswa = Siswa::where('nis', $nis)->firstOrFail();
        $pembayaran = PembayaranSiswa::latest()->get();
        return view('backend.siswa.pembayaran.index', compact('siswa', 'pembayaran'));
    }

    public function create($nis){
        $siswa = Siswa::where('nis', $nis)->firstOrFail();
        $dana_awal = DanaAwal::latest()->get();
        return view('backend.siswa.pembayaran.tambah', compact('siswa', 'dana_awal'));
    }

    public function store(Request $request, $nis)
    {
        try{
            $message = [
                'required' => 'Tidak boleh kosong!'
            ];

            $request->validate([

            ], $message);
        }catch(\Exception $e){

        }
    }

    public function edit(){
        return view('backend.siswa.pembayaran.edit');
    }

    public function tagihan(){
        return view('backend.siswa.pembayaran.tagihan');
    }

}
