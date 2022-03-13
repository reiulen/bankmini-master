<?php

namespace App\Http\Controllers;

use App\Models\Siswa;
use App\Models\TabunganSiswa;
use Illuminate\Http\Request;

class TabunganController extends Controller
{
    public function index($nis){
        $tabungan = TabunganSiswa::latest()->get();
        $siswa = Siswa::where('nis', $nis)->firstOrFail();
        return view('backend.siswa.tabungan.index', compact('siswa', 'tabungan'));
    }
    public function create($nis){
        $siswa = Siswa::where('nis', $nis)->firstOrFail();
        return view('backend.siswa.tabungan.tambah', compact('siswa'));
    }

    public function edit($nis){
        $siswa = Siswa::where('nis', $nis)->firstOrFail();
        $tabungan = TabunganSiswa::latest()->get();
        return view('backend.siswa.tabungan.edit', compact('siswa', 'tabungan'));
    }
}
