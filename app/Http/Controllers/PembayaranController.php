<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use App\Models\User;
use App\Models\Siswa;
use App\Models\DanaAwal;
use Illuminate\Http\Request;
use App\Models\PembayaranSiswa;
use Illuminate\Support\Facades\Auth;
use Illuminate\Auth\Events\Validated;
use Yajra\DataTables\Facades\DataTables;

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
        $siswa = Siswa::with(['kelas'])->where('nis', $nis)->firstOrFail();
        $petugas = User::orderBy('nama', 'ASC')->get();
        $dana = DanaAwal::where(['tahun_akademik_id' => $siswa->tahun_akademik_id])->latest()->get();
        return view('backend.siswa.pembayaran.index', compact('siswa', 'petugas', 'dana'));
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

            $siswa = Siswa::with(['kelas'])->where('nis', $nis)->firstOrFail();

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
                'jurusan_id' => $siswa->kelas->jurusan_id,
                'tahun_akademik_id' => $siswa->tahun_akademik_id,
                'tanggal' => Carbon::now()->isoformat('D MMMM Y'),
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

            $siswa = Siswa::with(['kelas'])->where('nis', $nis)->firstOrFail();

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
                'jurusan_id' => $siswa->kelas->jurusan_id,
                'tahun_akademik_id' => $siswa->tahun_akademik_id,
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
        return response()->json([
            'success' => 'Pembayaran ' .$pembayaran->kode .' berhasil dihapus',
        ]);
    }

    public function tagihan($nis){
        $siswa = Siswa::where('nis', $nis)->firstorfail();
        $dana = DanaAwal::where(['tahun_akademik_id' => $siswa->tahun_akademik_id])->latest()->get();
        $pembayaran = PembayaranSiswa::with(['danaawal'])->get();
        return view('backend.siswa.pembayaran.tagihan', compact('siswa', 'dana', 'pembayaran'));
    }

    public function dataTable($nis, Request $request)
    {
        $siswa = Siswa::where('nis', $nis)->firstOrFail();
        $data =  PembayaranSiswa::with(['petugas', 'danaawal', 'siswa'])->where(['siswa_id' => $siswa->id])->latest()->get();
        if($request->filter){
            $data =  PembayaranSiswa::with(['petugas', 'danaawal', 'siswa'])
                                    ->where(['siswa_id' => $siswa->id])
                                    ->filter($request->filter)
                                    ->order($request->filter)
                                    ->get();
        }
        return DataTables::of($data)
                         ->addIndexColumn()
                         ->addColumn('tanggal', function($data){
                             return tanggal($data->created_at);
                         })
                         ->addColumn('nominal', function($data){
                             return format_rupiah($data->nominal);
                         })->addColumn('sisa_tagihan', function($data){
                            return format_rupiah($data->sisa_tagihan);
                         })->addColumn('aksi', function($data){
                             return '<div class="dropdown">
                                        <button class="btn btn-none" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <i class="fas fa-ellipsis-v"></i>
                                        </button>
                                        <div class="dropdown-menu dropdown-menu-right border-0" aria-labelledby="dropdownMenuButton">
                                        <a class="dropdown-item" href="'. route('pembayaran.edit', [$data->siswa->nis, $data->id]) .'"><i class="fas fa-pencil-alt text-primary pr-1"></i> Edit</a>
                                        <a class="dropdown-item btn-hapus" role="button" data-id="'.$data->id.'" data-nama="'. $data->kode .'"><i class="fas fa-trash text-danger pr-1"></i> Hapus</a>
                                        </div>
                                    </div>';
                         })
                         ->rawColumns(['tanggal', 'nominal', 'sisa_tagihan', 'aksi'])
                         ->make(true);
    }
}
