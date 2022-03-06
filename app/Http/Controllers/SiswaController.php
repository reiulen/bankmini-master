<?php

namespace App\Http\Controllers;

use App\Models\Siswa;
use App\Models\Kelas;
use Illuminate\Http\Request;

class SiswaController extends Controller
{
    public function index(){
        $siswa = Siswa::with('kelas')->get();
        return view('backend.siswa.index', compact('siswa'));
    }

    public function create(){
        $kelas = Kelas::get();
        return view('backend.siswa.tambah', compact('kelas'));
    }

    public function store(Request $request){
        $message = [
            'required' => 'tidak boleh kosong',
        ];
        $request->validate([
            'nama' => 'required',
            'nisn' => 'required',
            'nis' => 'required',
            'tahun_masuk' => 'required',
            'tingkat_kelas' => 'required',
            'jenis_kelamin' => 'required',
            'kelas_id' => 'required',
            'tempat_lahir' => 'required',
            'tgl_lahir' => 'required',
            'alamat' => 'required',
            'anak_ke' => 'required',
            'warga_negara' => 'required',
            'agama' => 'required',
            'asal_sekolah' => 'required',
            'no_ijazah' => 'required',
            'tahun_lulus' => 'required',
            'alamat_sekolah' => 'required',
            'nilai_un' => 'required',
            'ayah' => 'required',
            'ibu' => 'required',
            'alamat_ortu' => 'required',
            'kerja_ayah' => 'required',
            'kerja_ibu' => 'required',
            'wali' => 'required',
            'alamat_wali' => 'required',
            'kerja_wali' => 'required',
            'hubungan_wali' => 'required',
            'status' => 'required',
            'sisa_dsp' => 'required',
            'sisa_infaq' => 'required',
            'sisa_ki' => 'required',
            'sisa_pkl' => 'required',
            'sisa_kelas_10' => 'required',
            'sisa_kelas_11' => 'required',
        ], $message);

        Siswa::create([
            'nama' => $request->nama,
            'nisn' => $request->nisn,
            'nis' => $request->nis,
            'tahun_masuk' => $request->tahun_masuk,
            'tingkat_kelas' => $request->tingkat_kelas,
            'jenis_kelamin' => $request->jenis_kelamin,
            'kelas_id' => $request->kelas_id,
            'tempat_lahir' => $request->tempat_lahir,
            'tgl_lahir' => $request->tgl_lahir,
            'alamat' => $request->alamat,
            'anak_ke' => $request->anak_ke,
            'warga_negara' => $request->warga_negara,
            'agama' => $request->agama,
            'asal_sekolah' => $request->asal_sekolah,
            'no_ijazah' => $request->no_ijazah,
            'tahun_lulus' => $request->tahun_lulus,
            'alamat_sekolah' => $request->alamat_sekolah,
            'nilai_un' => $request->nilai_un,
            'ayah' => $request->ayah,
            'ibu' => $request->ibu,
            'alamat_ortu' => $request->alamat_ortu,
            'kerja_ayah' => $request->kerja_ayah,
            'kerja_ibu' => $request->kerja_ibu,
            'wali' => $request->wali,
            'alamat_wali' => $request->alamat_wali,
            'kerja_wali' => $request->kerja_wali,
            'hubungan_wali' => $request->hubungan_wali,
            'status' => $request->status,
            'sisa_dsp' => $request->sisa_dsp,
            'sisa_infaq' => $request->sisa_infaq,
            'sisa_ki' => $request->sisa_infaq,
            'sisa_pkl' => $request->sisa_pkl,
            'sisa_kelas_10' => $request->sisa_kelas_10,
            'sisa_kelas_11' => $request->sisa_kelas_11,
        ]);
        return redirect(route('pengguna.index'));
    }

    public function edit(){
        return view('backend.siswa.edit');
    }

    public function show(){
        return view('backend.siswa.lihat');
    }

    public function eksport(){
        return view('backend.siswa.eksport');
    }

    public function pembayaran(){
        return view('backend.siswa.pembayaran');
    }

}
