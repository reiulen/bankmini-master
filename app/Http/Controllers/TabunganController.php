<?php

namespace App\Http\Controllers;

use PembayaranSiswa;
use App\Models\Siswa;
use Illuminate\Http\Request;
use App\Models\TabunganSiswa;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Auth;

class TabunganController extends Controller
{
    public function index($nis){
        $siswa = Siswa::with(['kelas'])->where('nis', $nis)->firstOrFail();
        $tabungan = TabunganSiswa::with(['petugas'])->where(['siswa_id' =>  $siswa->id])->orderBy('id', 'DESC')->get();
        return view('backend.siswa.tabungan.index', compact('siswa', 'tabungan'));
    }

    public function create($nis){
        $siswa = Siswa::with(['kelas'])->where('nis', $nis)->firstOrFail();
        $tabungan = TabunganSiswa::with(['petugas'])->where('siswa_id', $siswa->id)->orderBy('id', 'DESC')->get();
        $historytabungan = TabunganSiswa::with(['petugas'])->orderBy('id', 'DESC')->first();
        return view('backend.siswa.tabungan.tambah', compact('siswa', 'tabungan', 'historytabungan'));
    }

    public function store(Request $request, $nis)
    {
        $message = [
            'required' => 'Tidak boleh kosong!',
            'unique' => 'Sudah tersedia!'
        ];

        $request->validate([
            'kode' => 'required|unique:tabungan_siswas',
            'tipe' => 'required',
            'keterangan' => 'required',
            'nominal' => 'required',
        ], $message);

        $siswa = Siswa::where('nis', $nis)->firstOrFail();
        $tabungan = TabunganSiswa::where('siswa_id', $siswa->id)->orderBy('id', 'DESC')->first();
        $nominal = preg_replace("/[^0-9]/", "", $request->nominal);

        if($request->tipe == 1){
            $sisasaldo = $nominal;
            if($tabungan){
                $sisasaldo = $tabungan->sisa_saldo + $nominal;
            }
        }elseif($request->tipe == 2){
            if($tabungan){
                $sisasaldo = $tabungan->sisa_saldo - $nominal;
                if($tabungan->sisa_saldo < $nominal){
                    return back()->with('error_nominal', 'Saldo tidak mencukupi!');
                }
            }else{
                return back()->with('error_nominal', 'Saldo tidak mencukupi!');
            }
        }

        TabunganSiswa::create([
            'kode' => $request->kode,
            'siswa_id' => $siswa->id,
            'petugas_id' => Auth::user()->id,
            'tipe' => $request->tipe,
            'keterangan' => $request->keterangan,
            'nominal' => $nominal,
            'sisa_saldo' => $sisasaldo,
            'kelas_id' => $siswa->kelas_id,
            'tanggal' => Carbon::now()->isoformat('d MMMM Y') ,
            'bulan' => Carbon::parse(date('M'))->isoFormat('MMMM'),
            'tahun' => tahun(date('Y')),
        ]);

        return redirect(route('tabungan.index', $siswa->nis))->with([
            'pesan' => 'Berhasil menyimpan data pembayaran',
            'pesan1' => 'Tabungan ' .$request->kode .' berhasil ditambahkan',
        ]);
    }

    public function edit($nis, $id){
        $siswa = Siswa::with(['kelas'])->where('nis', $nis)->firstOrFail();
        $tabungan = TabunganSiswa::findorfail($id);
        $historytabungan = TabunganSiswa::with(['petugas'])->where('siswa_id', $siswa->id)->orderBy('id', 'DESC')->get();
        return view('backend.siswa.tabungan.edit', compact('siswa', 'tabungan', 'historytabungan'));
    }

    public function update(Request $request, $id, $nis)
    {
        $message = [
            'required' => 'Tidak boleh kosong!',
            'unique' => 'Sudah tersedia!'
        ];

        $request->validate([
            'kode' => 'required|unique:tabungan_siswas,kode,' . $id,
            'tipe' => 'required',
            'keterangan' => 'required',
            'nominal' => 'required',
        ], $message);

        $updatetabungan = TabunganSiswa::findorfail($id);
        $siswa = Siswa::where('nis', $nis)->firstOrFail();
        $tabungan = TabunganSiswa::where('siswa_id', $siswa->id)->orderBy('id', 'DESC')->first();
        $nominal = preg_replace("/[^0-9]/", "", $request->nominal);

        if($request->tipe == 1){
            $sisasaldo = $nominal;
            if($tabungan){
                $sisasaldo = $updatetabungan->sisa_saldo - $tabungan->sisa_saldo + $nominal;
            }
        }elseif($request->tipe == 2){
            if($tabungan){
                $sisasaldo = $tabungan->sisa_saldo - $nominal;
                if($tabungan->sisa_saldo < $nominal){
                    return back()->with('error_nominal', 'Saldo tidak mencukupi!');
                }
            }else{
                return back()->with('error_nominal', 'Saldo tidak mencukupi!');
            }
        }

        $updatetabungan->update([
            'tipe' => $request->tipe,
            'keterangan' => $request->keterangan,
            'nominal' => $nominal,
            'sisa_saldo' => $sisasaldo,
        ]);

        return redirect(route('tabungan.index', $siswa->nis))->with([
            'pesan' => 'Berhasil mengubah data pembayaran',
            'pesan1' => 'Tabungan ' .$request->kode .' berhasil diubah',
        ]);
    }

    public function delete($id, $nis)
    {
        $tabungan = TabunganSiswa::findOrFail($id);
        $tabungan->delete();
        return redirect(route('tabungan.index', $tabungan->siswa->nis))->with([
            'pesan' => 'Berhasil menghapus data pembayaran',
            'pesan1' => 'Tabungan ' .$tabungan->kode .' berhasil dihapus',
        ]);
    }
}
