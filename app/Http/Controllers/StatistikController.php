<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\TabunganSiswa;
use App\Models\PembayaranSiswa;
use Illuminate\Support\Facades\DB;
use Yajra\DataTables\Facades\DataTables;

class StatistikController extends Controller
{
    public function tabungan()
    {
        return view('backend.statistik.tabungan');
    }

    public function getDataTabungan(Request $request)
    {
        // return response()->json($request->laporan);
        $laporan = $request->laporan;

        switch ($laporan) {
            case 'tanggal':
                $tgl_awal = tanggal($request->tgl_awal);
                $tgl_akhir = tanggal($request->tgl_akhir);
            break;
            case 'bulan':
                $tgl_awal = bulan($request->tgl_awal);
                $tgl_akhir = bulan($request->tgl_akhir);
            break;
            case 'tahun':
                $tgl_awal = tahun($request->tgl_awal);
                $tgl_akhir = tahun($request->tgl_akhir);
            break;
        }

        $tabungan = TabunganSiswa::whereBetween('created_at', [$request->tgl_awal, $request->tgl_akhir])->get()->groupBy($laporan);
        if ($tabungan->count() == 0) {
            return response()->json([
                'kategori' => [],
                'debit' => [],
                'kredit' => [],
                'tampil' => $tgl_awal . ' s/d ' . $tgl_akhir,
            ]);
        }
        if($request->tipe == 'total'){
            foreach($tabungan as $t) {
                $debit[] = $t->where('tipe', '1')->count();
                $kredit[] = $t->where('tipe', '2')->count();
                $tanggal[] = $t->first()->$laporan;
            }
        }elseif($request->tipe == 'nominal'){
            foreach($tabungan as $t) {
                $debit[] = $t->where('tipe', '1')->sum('nominal');
                $kredit[] = $t->where('tipe', '2')->sum('nominal');
                $tanggal[] = $t->first()->$laporan;
            }
        }

        return response()->json([
            'kategori' => $tanggal,
            'debit' => $debit,
            'kredit' => $kredit,
            'tampil' => $tgl_awal . ' s/d ' . $tgl_akhir,
        ]);
    }

    public function getDataTableTabungan(Request $request)
    {
        if($request->filter){
            $filter = $request->filter;
        }else{
            $filter = [
                'laporan' => '',
                'tipe' => '',
                'tgl_awal' => '',
                'tgl_akhir' => '',
            ];
        }
        $laporan = $filter['laporan'];
        $tipe = $filter['tipe'];
        $tabungan = TabunganSiswa::whereBetween('created_at', [$filter['tgl_awal'], $filter['tgl_akhir']])->get()->groupBy($laporan);

        return DataTables::of($tabungan)
                    ->addIndexColumn()
                    ->addColumn('debit', function($tabungan) use ($tipe){
                        if($tipe == 'total'){
                            $debit =  $tabungan->where('tipe', '1')->count();
                        }else{
                            $debit =  format_rupiah($tabungan->where('tipe', '1')->sum('nominal'));
                        }
                        return $debit;
                    })
                    ->addColumn('kredit', function($tabungan) use ($tipe){
                        if($tipe == 'total'){
                            $kredit =  $tabungan->where('tipe', '2')->count();

                        }else{
                            $kredit =  format_rupiah($tabungan->where('tipe', '2')->sum('nominal'));
                        }
                        return $kredit;
                    })
                    ->addColumn('laporan', function($tabungan) use ($laporan){
                        $type =  $tabungan->first()->$laporan;
                        return $type;
                    })
                    ->rawColumns(['debit', 'kredit', 'laporan'])
                    ->make(true);
    }

    public function pembayaran()
    {
        return view('backend.statistik.pembayaran');
    }

    public function getDataPembayaran(Request $request)
    {
        // return response()->json($request->laporan);
        $laporan = $request->laporan;

        switch ($laporan) {
            case 'tanggal':
                $tgl_awal = tanggal($request->tgl_awal);
                $tgl_akhir = tanggal($request->tgl_akhir);
            break;
            case 'bulan':
                $tgl_awal = bulan($request->tgl_awal);
                $tgl_akhir = bulan($request->tgl_akhir);
            break;
            case 'tahun':
                $tgl_awal = tahun($request->tgl_awal);
                $tgl_akhir = tahun($request->tgl_akhir);
            break;
        }

        $pembayaran = PembayaranSiswa::whereBetween('created_at', [$request->tgl_awal, $request->tgl_akhir])->get()->groupBy($laporan);
        if ($pembayaran->count() == 0) {
            return response()->json([
                'data' => [],
                'kategori' => [],
                'tampil' => $tgl_awal . ' s/d ' . $tgl_akhir,
            ]);
        }
        if($request->tipe == 'total'){
            foreach($pembayaran as $row) {
                $data[] = $row->count();
                $tanggal[] = $row->first()->$laporan;
            }
        }elseif($request->tipe == 'nominal'){
            foreach($pembayaran as $row) {
                $data[] = $row->sum('nominal');
                $tanggal[] = $row->first()->$laporan;
            }
        }

        return response()->json([
            'data' => $data,
            'kategori' => $tanggal,
            'tampil' => $tgl_awal . ' s/d ' . $tgl_akhir,
        ]);
    }

    public function getDataTablePembayaran(Request $request)
    {
        if($request->filter){
            $filter = $request->filter;
        }else{
            $filter = [
                'laporan' => '',
                'tipe' => '',
                'tgl_awal' => '',
                'tgl_akhir' => '',
            ];
        }
        $laporan = $filter['laporan'];
        $tipe = $filter['tipe'];
        $pembayaran = PembayaranSiswa::whereBetween('created_at', [$filter['tgl_awal'], $filter['tgl_akhir']])->get()->groupBy($laporan);

        return DataTables::of($pembayaran)
                    ->addIndexColumn()
                    ->addColumn('data', function($pembayaran) use ($tipe){
                        if($tipe == 'total'){
                            $data =  $pembayaran->count();
                        }else{
                            $data =  format_rupiah($pembayaran->sum('nominal'));
                        }
                        return $data;
                    })
                    ->addColumn('laporan', function($tabungan) use ($laporan){
                        $type =  $tabungan->first()->$laporan;
                        return $type;
                    })
                    ->rawColumns(['data','laporan'])
                    ->make(true);
    }

}
