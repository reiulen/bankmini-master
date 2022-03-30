<?php

namespace App\Http\Controllers;

use App\Models\Kelas;
use App\Models\Siswa;
use App\Models\Jurusan;
use Illuminate\Http\Request;
use App\Models\TabunganSiswa;
use App\Models\TahunAkademik;
use Yajra\DataTables\Facades\DataTables;

class PemasukanController extends Controller
{
    public function index(){
        $kelas = Kelas::with(['jurusan'])->orderBy('kelas', 'ASC')->get();
        $tahunakademik = TahunAkademik::orderBy('id', 'ASC')->get();
        $jurusan = Jurusan::orderBy('id', 'ASC')->get();
        $tabungan = TabunganSiswa::with(['petugas'])->orderBy('id', 'DESC')->get();
        return view('backend.laporantabungan.index', compact('tabungan', 'kelas', 'tahunakademik', 'jurusan'));
    }

    public function datatable(Request $request)
    {
        $data = Siswa::with(['kelas', 'tahunakademik'])->orderBy('nis', 'DESC')->get();
            if($request->filter){
                $data = Siswa::with(['kelas', 'tahunakademik'])
                ->where('created_at', [$request->dari, $request->sampai])
                ->filter($request->filter)
                ->order($request->filter)
                ->get();
            }
        return DataTables::of($data)
                            ->addindexColumn()
                            ->addColumn('debit', function($data){
                                $tabungan = TabunganSiswa::where(['siswa_id' => $data->id, 'tipe' => '1'])->sum('nominal');
                                return format_rupiah($tabungan);
                            })
                            ->addColumn('kredit', function($data){
                                $tabungan = TabunganSiswa::where(['siswa_id' => $data->id, 'tipe' => '2'])->sum('nominal');
                                return format_rupiah($tabungan);
                            })
                            ->addColumn('kelas', function($data){
                                return $data->kelas->kelas . ' ' . $data->kelas->jurusan->nama . ' ' . $data->kelas->urut_kelas;
                            })
                            ->addColumn('saldo', function($data){
                                $debit = TabunganSiswa::where(['siswa_id' => $data->id, 'tipe' => '1'])->sum('nominal');
                                $kredit = TabunganSiswa::where(['siswa_id' => $data->id, 'tipe' => '2'])->sum('nominal');
                                $saldo = $debit - $kredit;
                                return format_rupiah($saldo);
                            })
                            ->rawColumns(['debit','kredit','kelas', 'saldo'])
                            ->make(true);
    }
}
