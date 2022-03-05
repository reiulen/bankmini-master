<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class SiswaController extends Controller
{
    public function index(){
        return view('backend.siswa.index');
    }

    public function create(){
        return view('backend.siswa.tambah');
    }

    public function edit(){
        return view('backend.siswa.edit');
    }

    public function show(){
        return view('backend.siswa.lihat');
    }

    public function eksport(){
        return view('backend.siswa.eksport');
    }

    public function pembayaran(){
        return view('backend.siswa.pembayaran');
    }

}
