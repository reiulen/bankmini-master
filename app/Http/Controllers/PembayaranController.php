<?php

namespace App\Http\Controllers;

use App\Models\Siswa;
use App\Models\DanaAwal;
use Illuminate\Http\Request;
use App\Models\PembayaranSiswa;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Auth\Events\Validated;

class PembayaranController extends Controller
{
    public function getData($nis, $id)
    {
        $siswa = Siswa::where(['nis' => $nis])->firstorFail();
        $pembayaran = PembayaranSiswa::with(['danaawal'])
                      ->where(['siswa_id' => $siswa->id,'dana_awal_id' => $id])
                      ->orderBy('id', 'DESC')->get();

        if($pembayaran->count() > 0){
            $sisatagihan = $pembayaran->first()->danaawal->nominal - $pembayaran->sum('nominal');
            return response()->json([
                'data' => [
                            'nominal' => $sisatagihan
                          ]
            ]);
        }else{
            $dana = DanaAwal::with(['tahunakademik'])->findorFail($id);
            return response()->json([
                'awal' => tahun($dana->tahunakademik->awal),
                'akhir' => tahun($dana->tahunakademik->akhir),
                'data' => $dana
            ]);
        }

    }

    public function index($nis){
        $siswa = Siswa::where('nis', $nis)->firstOrFail();
        $pembayaran = PembayaranSiswa::with(['petugas'])->where(['siswa_id' => $siswa->id])->latest()->get();
        return view('backend.siswa.pembayaran.index', compact('siswa', 'pembayaran'));
    }

    public function create($nis){
        $siswa = Siswa::where('nis', $nis)->firstOrFail();
        $dana = DanaAwal::where(['tahun_akademik_id' => $siswa->tahun_akademik_id])->latest()->get();
        $pembayaran = PembayaranSiswa::orderBy('id', 'desc')->first();
        $historypembayaran = PembayaranSiswa::with(['petugas'])->where(['siswa_id' => $siswa->id])->latest()->get();
        return view('backend.siswa.pembayaran.tambah', compact('siswa', 'dana', 'pembayaran', 'historypembayaran'));
    }

    public function store(Request $request, $nis)
    {
            $message = [
                'required' => 'Tidak boleh kosong!'
            ];
            $request->validate([
                'kode' => 'required|unique:pembayaran_siswas',
                'pembayaran' => 'required',
                'keterangan' => 'required',
                'nominal' => 'required',
            ], $message);

            $siswa = Siswa::where('nis', $nis)->firstOrFail();

            $nominal = preg_replace("/[^0-9]/", "", $request->nominal);
            $pembayaran = PembayaranSiswa::with(['danaawal'])
                      ->where(['siswa_id' => $siswa->id,'dana_awal_id' => $request->pembayaran])
                      ->orderBy('id', 'DESC')->get();

            $danaawal = DanaAwal::find($request->pembayaran);
            if($pembayaran->count() > 0){
                $sisatagihan = $pembayaran->first()->danaawal->nominal - $pembayaran->sum('nominal');
                if($sisatagihan == 0){
                    return redirect()->back()->with('error_nominal', 'Pembayaran sudah lunas!');
                }
                $sisatagihan = $pembayaran->first()->sisa_tagihan - $nominal;
                if($sisatagihan < 0){
                    return redirect()->back()->with('error_nominal', 'Nominal yang anda masukan melebihi sisa tagihan');
                };
            }else{
                $sisatagihan = $danaawal->nominal - $nominal;
            }

            PembayaranSiswa::create([
                'kode' => $request->kode,
                'siswa_id' => $siswa->id,
                'petugas_id' => Auth::user()->id,
                'dana_awal_id' => $request->pembayaran,
                'keterangan' => $request->keterangan,
                'nominal' => $nominal,
                'sisa_tagihan' => $sisatagihan,
                'kelas_id' => $siswa->kelas_id,
                'bulan' => Carbon::parse(date('M'))->isoFormat('MMMM'),
                'tahun' => tahun(date('Y')),
            ]);

            return redirect(route('pembayaran.index', $siswa->nis))->with([
                'pesan' => 'Berhasil menambahkan data pembayaran',
                'pesan1' => 'Pembayaran ' .$request->kode .' berhasil ditambahkan',
            ]);
    }

    public function edit($nis, $id){
        $siswa = Siswa::where('nis', $nis)->firstOrFail();
        $dana = DanaAwal::where(['tahun_akademik_id' => $siswa->tahun_akademik_id])->latest()->get();
        $pembayaran = PembayaranSiswa::findorfail($id);
        $historypembayaran = PembayaranSiswa::with(['petugas'])->where(['siswa_id' => $siswa->id])->latest()->get();
        return view('backend.siswa.pembayaran.edit', compact('siswa', 'dana', 'pembayaran', 'historypembayaran'));
    }

    public function update(Request $request, $nis, $id)
    {
            $message = [
                'required' => 'Tidak boleh kosong!'
            ];
            $request->validate([
                'kode' => 'required|unique:pembayaran_siswas,kode,' . $id,
                'pembayaran' => 'required',
                'keterangan' => 'required',
                'nominal' => 'required',
            ], $message);

            $siswa = Siswa::where('nis', $nis)->firstOrFail();

            $nominal = preg_replace("/[^0-9]/", "", $request->nominal);
            $pembayaran = PembayaranSiswa::with(['danaawal'])->find($id);
            $getpembayaran = PembayaranSiswa::with(['danaawal'])
                      ->where('id', '!=', $pembayaran->id)
                      ->where(['siswa_id' => $siswa->id,'dana_awal_id' => $request->pembayaran])
                      ->orderBy('id', 'DESC')->get();

            if($getpembayaran->count() > 0){
                $sisatagihan = $getpembayaran->first()->sisa_tagihan - $nominal;
            }else{
                $sisatagihan = $pembayaran->danaawal->nominal - $nominal;
            };
            if($sisatagihan < 0){
                return redirect()->back()->with('error_nominal', 'Nominal yang anda masukan melebihi sisa tagihan');
            };

            $pembayaran->update([
                'petugas_id' => Auth::user()->id,
                'dana_awal_id' => $request->pembayaran,
                'keterangan' => $request->keterangan,
                'nominal' => $nominal,
                'sisa_tagihan' => $sisatagihan,
                'kelas_id' => $siswa->kelas_id,
                'tanggal' => Carbon::now()->isoformat('d MMMM Y'),
                'bulan' => Carbon::parse(date('M'))->isoFormat('MMMM'),
                'tahun' => tahun(date('Y')),
            ]);

            return redirect(route('pembayaran.index', $siswa->nis))->with([
                'pesan' => 'Berhasil mengubah data pembayaran',
                'pesan1' => 'Pembayaran ' .$request->kode .' berhasil diubah',
            ]);
    }

    public function delete($pembayaran, $siswa)
    {
        $pembayaran = PembayaranSiswa::findorfail($pembayaran);
        $pembayaran->delete();
        return redirect(route('pembayaran.index', $siswa))->with([
            'pesan' => 'Berhasil menghapus data pembayaran',
            'pesan1' => 'Pembayaran ' .$pembayaran->kode .' berhasil dihapus',
        ]);
    }

    public function tagihan($nis){
        $siswa = Siswa::where('nis', $nis)->firstorfail();
        $dana = DanaAwal::where(['tahun_akademik_id' => $siswa->tahun_akademik_id])->latest()->get();
        $pembayaran = PembayaranSiswa::with(['danaawal'])->get();
        return view('backend.siswa.pembayaran.tagihan', compact('siswa', 'dana', 'pembayaran'));
    }
}
