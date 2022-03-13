<?php

namespace App\Http\Controllers;

use App\Models\Kelas;
use App\Models\Siswa;
use App\Models\Pekerjaan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Image;

class SiswaController extends Controller
{
    public function index(){
        $siswa = Siswa::with(['kelas'])->latest()->get();
        return view('backend.siswa.index', compact('siswa'));
    }

    public function create(){
        $kelas = Kelas::get();
        $pekerjaan = Pekerjaan::get();
        return view('backend.siswa.tambah', compact('pekerjaan', 'kelas'));
    }

    public function store(Request $request){
        $message = [
            'required' => 'Tidak boleh kosong',
            'unique' => 'Sudah ada!',
            'max' => 'Terlalu panjang!',
            'min' => 'Terlalu pendek!'
        ];
        $request->validate([
            'nama' => 'required',
            'nisn' => 'required|max:10|min:10|unique:siswa',
            'nis' => 'required|max:9|min:9|unique:siswa',
            'tahun_masuk' => 'required',
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
        ], $message);

        $kelas = Kelas::find($request->kelas_id);

        if($request->hasFile('foto')){
            $tujuan = 'upload/foto/siswa/' .$kelas->kelas. ' ' . $kelas->nama_kelas . ' ' . $kelas->urut_kelas ;
            if(!File::isDirectory($tujuan)){
                File::makeDirectory($tujuan);
            }

            $file = $request->file('foto');
            $rename = $request->nama . '_300x300_.webp';
            $image  = Image::make($file);
            $image->fit(300, 300, function($contraint){
                $contraint->aspectRatio();
            });
            $image->save($tujuan . '/' . $rename);
            $foto = $tujuan . '/' . $rename;
        }else{
            $foto = 'upload/foto/siswa/siswa.png';
        }

        Siswa::create([
            'foto' => $foto,
            'nama' => $request->nama,
            'nisn' => $request->nisn,
            'nis' => $request->nis,
            'tahun_masuk' => $request->tahun_masuk,
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
            'ayah' => $request->ayah,
            'ibu' => $request->ibu,
            'alamat_ortu' => $request->alamat_ortu,
            'pekerjaan_ayah' => $request->kerja_ayah,
            'pekerjaan_ibu' => $request->kerja_ibu,
            'wali' => $request->nama_wali,
            'alamat_wali' => $request->alamat_wali,
            'kerja_wali' => $request->kerja_wali,
            'hubungan_wali' => $request->hubungan_wali,
        ]);
        return redirect(route('siswa.index'))->with([
            'pesan' => 'Data berhasil ditambahkan',
            'pesan1' => 'Data ' . $request->nama . ' berhasil ditambahkan'
        ]);
    }

    public function edit($nis){
        $kelas = Kelas::get();
        $pekerjaan = Pekerjaan::get();
        $siswa = Siswa::where('nis', $nis)->with(['kelas', 'pekerjaan'])->firstorfail();
        return view('backend.siswa.edit', compact('siswa', 'kelas', 'pekerjaan'));
    }

    public function update(Request $request, $nis){

        $siswa = Siswa::where('nis', $nis)->firstorfail();

        $message = [
            'required' => 'Tidak boleh kosong',
            'unique' => 'Sudah ada!',
            'max' => 'Terlalu panjang!',
            'min' => 'Terlalu pendek!'
        ];
        $request->validate([
            'nama' => 'required',
            'nisn' => 'required|max:10|min:10|unique:siswa,nisn,' . $siswa->id,
            'nis' => 'required|max:9|min:9|unique:siswa,nis,' . $siswa->id,
            'tahun_masuk' => 'required',
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
        ], $message);

        $kelas = Kelas::find($request->kelas_id);

        if($request->hasFile('foto')){
            $tujuan = 'upload/foto/siswa/' .$kelas->kelas. ' ' . $kelas->nama_kelas . ' ' . $kelas->urut_kelas ;
            if(!File::isDirectory($tujuan)){
                File::makeDirectory($tujuan);
            }

            $file = $request->file('foto');
            $rename = $request->nama . '_300x300_.webp';
            $image  = Image::make($file);
            $image->fit(300, 300, function($contraint){
                $contraint->aspectRatio();
            });
            $image->save($tujuan . '/' . $rename);
            $foto = $tujuan . '/' . $rename;
            File::delete($siswa->foto);
        }else{
            $foto = $siswa->foto;
        }

        $siswa->update([
            'foto' => $foto,
            'nama' => $request->nama,
            'nisn' => $request->nisn,
            'nis' => $request->nis,
            'tahun_masuk' => $request->tahun_masuk,
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
            'ayah' => $request->ayah,
            'ibu' => $request->ibu,
            'alamat_ortu' => $request->alamat_ortu,
            'pekerjaan_ayah' => $request->kerja_ayah,
            'pekerjaan_ibu' => $request->kerja_ibu,
            'wali' => $request->nama_wali,
            'alamat_wali' => $request->alamat_wali,
            'kerja_wali' => $request->kerja_wali,
            'hubungan_wali' => $request->hubungan_wali,
        ]);
        return redirect(route('siswa.index'))->with([
            'pesan' => 'Data berhasil diedit',
            'pesan1' => 'Data ' . $request->nama . ' berhasil diedit'
        ]);
    }

    public function show($nis){
        $siswa = Siswa::where('nis', $nis)->firstorfail();
        return view('backend.siswa.lihat', compact('siswa'));
    }

    public function delete($nis)
    {
        $siswa = Siswa::where('nis', $nis)->firstorfail();
        $siswa->delete($nis);
        return redirect(route('siswa.index'))->with([
            'pesan' => 'Data berhasil dihapus',
            'pesan1' => 'Data ' . $siswa->nama . ' berhasil dihapus'
        ]);
    }

    public function eksport(){
        return view('backend.siswa.eksport');
    }

}
