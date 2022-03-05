<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AkademikController extends Controller
{

    public function index()
    {
        return view('backend.tahunakademik.index');
    }
}
