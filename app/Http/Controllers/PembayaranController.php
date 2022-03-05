<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PembayaranController extends Controller
{
    public function index(){
        return view('backend.siswa.pembayaran.index');
    }

    public function create(){
        return view('backend.siswa.pembayaran.tambah');
    }

    public function edit(){
        return view('backend.siswa.pembayaran.edit');
    }

    public function tagihan(){
        return view('backend.siswa.pembayaran.tagihan');
    }

}
