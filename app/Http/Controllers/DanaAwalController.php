<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class DanaAwalController extends Controller
{

    public function index()
    {
        return view('backend.danaawal.index');
    }
}
