<?php

namespace App\Http\Controllers;

use App\Models\Siswa;
use App\Models\DanaAwal;
use Illuminate\Http\Request;
use App\Models\TabunganSiswa;
use App\Models\PembayaranSiswa;
use App\Models\TahunAkademik;
use Illuminate\Support\Facades\Auth;

class DashboardController extends Controller
{
    public function index()
    {
        $siswa = Auth::guard('siswa')->user();
        if($siswa){
            $pembayaran = PembayaranSiswa::select('tahun_akademik_id','nominal','tanggal','bulan', 'tahun','created_at')->where('siswa_id', $siswa->id)->get();
            $tabungan = TabunganSiswa::where('siswa_id', $siswa->id)->latest()->get();
            $charttabungan = TabunganSiswa::where('siswa_id', $siswa->id)->latest()->limit(10)->get()->groupBy('tanggal');
        }else{
            $pembayaran = PembayaranSiswa::select('tahun_akademik_id','nominal','tanggal','bulan', 'tahun','created_at')->get();
            $tabungan = TabunganSiswa::latest()->get();
            $charttabungan = TabunganSiswa::latest()->limit(10)->get()->groupBy('tanggal');
        }
        return view('backend.dashboard', compact('pembayaran', 'tabungan', 'charttabungan'));
    }

    public function datats($by)
    {
        $siswa = Auth::guard('siswa')->user();
        if($siswa){
            $pembayaran = PembayaranSiswa::select('tahun_akademik_id','nominal','tanggal','bulan', 'tahun','created_at')->where('siswa_id', $siswa->id)->get();
        }else{
            $pembayaran = PembayaranSiswa::select('tahun_akademik_id','nominal','tanggal','bulan', 'tahun','created_at')->get();
        }
        $labels = [];
        $jumlah = [];

        try{
            if($by == 'hari'){
                $by = 'tanggal';
            }
            foreach($pembayaran->groupBy($by)->take(12) as $row){
                $labels[] = $row->first()->$by;
                $jumlah[] = $row->count();
            }
            return response()->json([
                'labels' => $labels,
                'jumlah' => $jumlah,
            ]);
        }catch(\Exception $e){
            return response()->json([
                'labels' => [],
                'jumlah' => [],
            ]);
        }
    }

    public function datatab($by)
    {
        $siswa = Auth::guard('siswa')->user();
        if($by == 'hari'){
            $by = 'tanggal';
        }
        if($siswa){
            $charttabungan = TabunganSiswa::where('siswa_id', $siswa->id)->latest()->get()->groupBy($by);
        }else{
            $charttabungan = TabunganSiswa::latest()->get()->groupBy($by);
        }
        $labels = [];
        $jumlahkredit = [];
        $jumlahdebit = [];

        try{
            foreach($charttabungan->take(12) as $row){
                $labels[] = $row->first()->$by;
                $jumlahkredit[] = $row->where('tipe', '2')->count();
                $jumlahdebit[] = $row->where('tipe', '1')->count();
            }
            return response()->json([
                'labels' => $labels,
                'jumlahkredit' => $jumlahkredit,
                'jumlahdebit' => $jumlahdebit,
            ]);
        }catch(\Exception $e){
            return response()->json([
                'labels' => [],
                'jumlahkredit' => [],
                'jumlahdebit' => [],
            ]);
        }
    }
}
