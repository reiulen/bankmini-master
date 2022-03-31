<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Kelas;
use App\Models\Jurusan;
use Illuminate\Http\Request;
use App\Models\TabunganSiswa;
use App\Models\TahunAkademik;
use Yajra\DataTables\Facades\DataTables;

class HistoryController extends Controller
{
    public function index()
    {
        $kelas = Kelas::with(['jurusan'])->orderBy('kelas', 'ASC')->get();
        $petugas = User::orderBy('nama', 'ASC')->get();
        $tabungan = TabunganSiswa::with(['petugas'])->orderBy('id', 'DESC')->get();
        return view('backend.history.tabungan', compact('tabungan', 'kelas', 'petugas'));
    }

    public function datatable(Request $request)
    {
        $tanggal = [$request->dari, $request->sampai];
        $data =  TabunganSiswa::with(['petugas', 'siswa'])
                                ->tanggal($tanggal)
                                ->orderBy('id', 'DESC')
                                ->get();
            if($request->filter){
                $data =  TabunganSiswa::with(['petugas', 'siswa'])
                                        ->tanggal($tanggal)
                                        ->filter($request->filter)
                                        ->order($request->filter)
                                        ->get();
            }
            return DataTables::of($data)
                            ->addIndexColumn()
                            ->addColumn('tanggal', function($data){
                                return tanggal($data->created_at);
                            })
                            ->addColumn('tipe', function($data){
                                if($data->tipe == 1){
                                    return '<span class="badge badge-success rounded- px-3 py-2">Debit</span>';
                                }else{
                                    return '<span class="badge badge-danger rounded- px-3 py-2">Kredit</span>';
                                }
                            })
                            ->addColumn('nominal', function($data){
                                return format_rupiah($data->nominal);
                            })->addColumn('saldo', function($data){
                                return format_rupiah($data->sisa_saldo);
                            })
                            ->rawColumns(['tanggal', 'tipe', 'nominal', 'sisa_tagihan'])
                            ->make(true);
    }
}
