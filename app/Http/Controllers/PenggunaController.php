<?php

namespace App\Http\Controllers;

use Illuminate\Contracts\View\View;
use Illuminate\Http\Request;

class PenggunaController extends Controller
{
    public function index(){
        return view('backend.pengguna.index');
    }


    public function create(){
        return view('backend.pengguna.tambah');
    }


    public function edit(){
        return view('backend.pengguna.edit');
    }

    public function show(){
        return view('backend.pengguna.lihat');
    }
}
