<?php

namespace App\Http\Controllers;

use Image;
use App\Models\Kelas;
use App\Models\Siswa;
use App\Models\Jurusan;
use App\Models\DanaAwal;
use App\Models\Pekerjaan;
use App\Imports\SiswaImport;
use Illuminate\Http\Request;
use App\Models\TabunganSiswa;
use App\Models\TahunAkademik;
use App\Models\PembayaranSiswa;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\File;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Support\Facades\Cache;
use Yajra\DataTables\Facades\DataTables;
use Illuminate\Support\Facades\Validator;

class SiswaController extends Controller
{
    public function index()
    {
        $kelas = Kelas::with(['jurusan'])->orderBy('kelas', 'ASC')->get();
        $tahunakademik = TahunAkademik::orderBy('id', 'ASC')->get();
        $jurusan = Jurusan::orderBy('id', 'ASC')->get();
        return view('backend.siswa.index', compact( 'kelas', 'tahunakademik', 'jurusan'));
    }

    public function create(){
        $kelas = Kelas::get();
        $pekerjaan = Pekerjaan::get();
        $tahunakademik = TahunAkademik::latest()->get();
        return view('backend.siswa.tambah', compact('pekerjaan', 'kelas', 'tahunakademik'));
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
                'tahun_akademik' => 'required',
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

            $kelas = Kelas::with(['jurusan'])->find($request->kelas_id);

            if($request->hasFile('foto')){
                $tujuan = 'upload/foto/siswa/' .$kelas->kelas. ' ' . $kelas->jurusan->nama . ' ' . $kelas->urut_kelas ;
                if(!File::isDirectory($tujuan)){
                    File::makeDirectory($tujuan, 0755, true, true);
                }

                $file = $request->file('foto');
                $rename = $request->nama . '_472×709_.webp';
                $image  = Image::make($file);
                $image->fit(472, 709, function($contraint){
                    $contraint->aspectRatio();
                });
                $image->save($tujuan . '/' . $rename);
                $foto = $tujuan . '/' . $rename;
            }else{
                $foto = 'upload/foto/siswa/siswa.png';
            }
            $kelas = Kelas::with(['jurusan'])->find($request->kelas_id);
            Siswa::create([
                'foto' => $foto,
                'nama' => $request->nama,
                'nisn' => $request->nisn,
                'nis' => $request->nis,
                'tahun_akademik_id' => $request->tahun_akademik,
                'jenis_kelamin' => $request->jenis_kelamin,
                'kelas_id' => $request->kelas_id,
                'jurusan_id' => $kelas->jurusan->id,
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
        $kelas = Kelas::with(['jurusan'])->get();
        $pekerjaan = Pekerjaan::get();
        $tahunakademik = TahunAkademik::latest()->get();
        $siswa = Siswa::where('nis', $nis)->with(['kelas', 'pekerjaan', 'tahunakademik'])->firstorfail();
        return view('backend.siswa.edit', compact('siswa', 'kelas', 'pekerjaan', 'tahunakademik'));
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
                'tahun_akademik' => 'required',
                'jenis_kelamin' => 'required',
                'kelas_id' => 'required',
                'tempat_lahir' => 'required',
                'tgl_lahir' => 'required',
                'alamat' => 'required',
                'anak_ke' => 'required',
                'warga_negara' => 'required',
                'agama' => 'required',
                'asal_sekolah' => 'required',
                'tahun_lulus' => 'required',
            ], $message);

            $kelas = Kelas::with(['jurusan'])->find($request->kelas_id);

            if($request->hasFile('foto')){
                $tujuan = 'upload/foto/siswa/' .$kelas->kelas. ' ' . $kelas->jurusan->nama . ' ' . $kelas->urut_kelas ;
                if(!File::isDirectory($tujuan)){
                    File::makeDirectory($tujuan, 0755, true, true);
                }

                $file = $request->file('foto');
                $rename = $request->nama . '_472×709_.webp';
                $image  = Image::make($file);
                $image->fit(472, 709, function($contraint){
                    $contraint->aspectRatio();
                });
                $image->save($tujuan . '/' . $rename);
                $foto = $tujuan . '/' . $rename;
                if($siswa->foto != 'upload/foto/siswa/siswa.png' ){
                    File::delete($siswa->foto);
                }
            }else{
                $foto = $siswa->foto;
            }

            $siswa->update([
                'foto' => $foto,
                'nama' => $request->nama,
                'nisn' => $request->nisn,
                'nis' => $request->nis,
                'tahun_akademik_id' => $request->tahun_akademik,
                'jenis_kelamin' => $request->jenis_kelamin,
                'kelas_id' => $request->kelas_id,
                'jurusan_id' => $kelas->jurusan->id,
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
        $dana = DanaAwal::where(['tahun_akademik_id' => $siswa->tahun_akademik_id])->latest()->get();
        $pembayaran = PembayaranSiswa::with(['danaawal'])->get();
        return view('backend.siswa.lihat', compact('siswa', 'pembayaran', 'dana'));
    }

    public function delete($nis)
    {
        $siswa = Siswa::where('nis', $nis)->firstorfail();
        TabunganSiswa::where('siswa_id', $siswa->id)->delete();
        PembayaranSiswa::where('siswa_id', $siswa->id)->delete();
        if($siswa->foto != 'upload/foto/siswa/siswa.png'){
            File::delete($siswa->foto);
        }
        $siswa->delete($nis);
        return redirect(route('siswa.index'))->with([
            'pesan' => 'Data berhasil dihapus',
            'pesan1' => 'Data ' . $siswa->nama . ' berhasil dihapus'
        ]);
    }

    public function eksport(){
        return view('backend.siswa.eksport');
    }

    public function datatable(Request $request)
    {
        $data =  Siswa::select('id', 'foto', 'nama', 'nisn', 'nis',
                        'jenis_kelamin', 'kelas_id', 'tahun_akademik_id',
                        'jurusan_id')
                        ->with(['kelas', 'tahunakademik', 'jurusan'])
                        ->filter($request->filter)
                        ->order($request->filter);
        return DataTables::of($data)
                            ->addindexColumn()
                            ->addColumn('foto', function($data){
                                return '<img src="' .asset($data->foto). '" class="rounded-circle shadow-lg img-thumbnail" style="height: 60px; width:60px; object-fit:cover;object-position:top;">';
                            })
                            ->addColumn('kelas', function($data){
                                return $data->kelas->kelas . ' ' . $data->jurusan->nama . ' ' . $data->kelas->urut_kelas;
                            })
                            ->addColumn('tahun_akademik', function($data){
                                return tahun($data->tahunakademik->awal). ' - ' .tahun($data->tahunakademik->akhir);
                            })
                            ->addColumn('aksi', function($data){
                                $user = Auth::user();
                                $user->can('siswapembayaran.index') ? $btnpembayaran = '<a class="dropdown-item" href="' . route("pembayaran.index", $data->nis) .'"><i class="fas fa-coins text-warning pr-1"></i> Pembayaran</a>' : $btnpembayaran = '';
                                $user->can('siswatabungan.index') ? $btntabungan = '<a class="dropdown-item" href="' .route("tabungan.index", $data->nis). '"><i class="fas fa-book text-secondary pr-1"></i> Tabungan</a>' : $btntabungan = '';
                                $user->can('siswa.read') ? $read = '<a class="dropdown-item" href="' .route("siswa.show", $data->nis). '"><i class="fas fa-eye text-success pr-1"></i> Lihat</a>' : $read = '';
                                $user->can('siswa.update') ? $update = '<a class="dropdown-item" href="' .route("siswa.edit", $data->nis). '"><i class="fas fa-pencil-alt text-primary pr-1"></i> Edit</a>' : $update = '';
                                $user->can('siswa.delete') ? $delete = '<a class="dropdown-item" role="button" id="hapus' .$data->id. '" onclick="hapus('.$data->id.')" data="' .$data->nama. '"><i class="fas fa-trash text-danger pr-1"></i> Hapus</a>
                                                                        <form action="' .route("siswa.delete", $data->nis). '" method="POST" id="form-hapus' .$data->id. '">
                                                                            ' .csrf_field(). '
                                                                            <input type="hidden" name="_method" value="DELETE">
                                                                        </form>' : $delete = '';
                                $menu = '';
                                if($user->canany(['siswapembayaran.index', 'siswatabungan.index', 'siswa.read', 'siswa.update', 'siswa.delete'])){
                                    $menu = '<button class="btn btn-none" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <i class="fas fa-ellipsis-v"></i>
                                            </button>
                                            <div class="dropdown-menu dropdown-menu-right border-0" aria-labelledby="dropdownMenuButton">
                                                '.$btnpembayaran.'
                                                '.$btntabungan.'
                                                '.$read.'
                                                '.$update.'
                                                '.$delete.'
                                            </div>';
                                }
                                return '<div class="dropdown">
                                            '.$menu.'
                                        </div>';
                            })
                            ->rawColumns(['foto', 'tahun_akademik','aksi'])
                            ->smart(true)
                            ->make(true);
    }

    public function importSiswa(Request $request)
    {
        $validasi = Validator::make($request->all(), [
            'file' => 'required|mimes:xls,xlsx'
        ]);

        if($validasi->fails()){
            return response()->json($validasi->errors());
        }

        Excel::import(new SiswaImport, $request->file('file'));

        return response()->json([
            'succes' => 'Data siswa berhasil diimport',
        ]);
    }

}
