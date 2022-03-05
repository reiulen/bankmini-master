<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class TunggakanController extends Controller
{
    public function index()
    {
        return view('backend.laporantunggakan.index');
    }
}
