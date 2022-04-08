<?php

namespace App\Http\Controllers;

use App\Models\Siswa;
use App\Models\DanaAwal;
use Illuminate\Http\Request;
use App\Models\TabunganSiswa;
use App\Models\PembayaranSiswa;
use App\Models\TahunAkademik;

class DashboardController extends Controller
{
    public function index()
    {
        $pembayaran = PembayaranSiswa::select('tahun_akademik_id','nominal')->get();
        $tabungan = TabunganSiswa::latest()->get();
        $charttabungan = TabunganSiswa::latest()->limit(10)->get()->groupBy('tanggal');
        $tahunakademik = TahunAkademik::select('id')->get();
        $dana = DanaAwal::select('tahun_akademik_id','nominal')->get();
        $siswa = Siswa::select('tahun_akademik_id', 'id')->get();
        return view('backend.dashboard', compact('tahunakademik','pembayaran', 'tabungan', 'charttabungan', 'dana', 'siswa'));
    }
}
