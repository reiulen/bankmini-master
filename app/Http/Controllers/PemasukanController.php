<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PemasukanController extends Controller
{
    public function index(){
        return view('backend.laporanmasuk.index');
    }

}
