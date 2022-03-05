<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class TabunganController extends Controller
{
    public function index(){
        return view('backend.siswa.tabungan.index');
    }

    public function create(){
        return view('backend.siswa.tabungan.tambah');
    }

    public function edit(){
        return view('backend.siswa.tabungan.edit');
    }
}
