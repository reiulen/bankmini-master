<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\TabunganSiswa;
use App\Models\PembayaranSiswa;


class DashboardController extends Controller
{
    public function index()
    {
        $pembayaran = PembayaranSiswa::latest()->get();
        $tabungan = TabunganSiswa::latest()->get();
        $charttabungan = TabunganSiswa::latest()->limit(10)->get()->groupBy('tanggal');
        return view('backend.dashboard', compact('pembayaran', 'tabungan', 'charttabungan'));
    }
}
