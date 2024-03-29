<?php

namespace App\Http\Controllers;

use App\Models\User;
use PembayaranSiswa;
use App\Models\Siswa;
use Illuminate\Http\Request;
use App\Models\TabunganSiswa;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Cache;
use Yajra\DataTables\Facades\DataTables;
use PDF;

class TabunganController extends Controller
{
    public function index(Request $request, $nis){
        $siswa = Siswa::with(['kelas'])->where('nis', $nis)->firstOrFail();
        $tabungan = TabunganSiswa::with(['petugas'])->where(['siswa_id' =>  $siswa->id])->orderBy('id', 'DESC')->get();
        $petugas = User::orderBy('nama', 'ASC')->get();
        return view('backend.siswa.tabungan.index', compact('siswa', 'tabungan', 'petugas'));
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
            'tanggal' => Carbon::now()->isoformat('D MMMM Y') ,
            'bulan' => Carbon::parse(date('M'))->isoFormat('MMMM'),
            'tahun' => tahun(date('Y')),
        ]);

        if($request->cetak == 1){
            $id = TabunganSiswa::orderBy('id','desc')->first()->id;
            return redirect(route('tabungan.cetak', $siswa->nis) .'?cetak='.$id);
        }

        return redirect(route('tabungan.index', $siswa->nis))->with([
            'pesan' => 'Berhasil menyimpan data tabungan',
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
                $sisasaldo =  $nominal +  $tabungan->sisa_saldo - $updatetabungan->nominal ;
            }
        }elseif($request->tipe == 2){
            if($tabungan){
                if($tabungan->sisa_saldo < $updatetabungan->nominal){
                    $sisasaldo = $tabungan->sisa_saldo - $updatetabungan->nominal - $nominal;
                }else{
                    $sisasaldo = $tabungan->sisa_saldo + $updatetabungan->nominal - $nominal;
                };

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

        if($request->cetak == 1){
            $id = $updatetabungan->id;
            return redirect(route('tabungan.cetak', $siswa->nis) .'?cetak='.$id);
        }

        return redirect(route('tabungan.index', $siswa->nis))->with([
            'pesan' => 'Berhasil mengubah data tabungan',
            'pesan1' => 'Tabungan ' .$request->kode .' berhasil diubah',
        ]);
    }

    public function delete($id, $nis)
    {
        $tabungan = TabunganSiswa::findOrFail($id);
        $tabungan->delete();
        return redirect(route('tabungan.index', $tabungan->siswa->nis))->with([
            'pesan' => 'Berhasil menghapus data tabungan',
            'pesan1' => 'Tabungan ' .$tabungan->kode .' berhasil dihapus',
        ]);
    }

     public function dataTable($nis, Request $request)
    {
        $siswa = Siswa::where('nis', $nis)->firstOrFail();
        $data = TabunganSiswa::with(['petugas', 'siswa'])
                                    ->where(['siswa_id' => $siswa->id])
                                    ->filter($request->filter)
                                    ->order($request->filter)
                                    ->latest();
        return DataTables::of($data)
                         ->addIndexColumn()
                         ->addColumn('tanggal', function($data){
                             return tgl($data->created_at);
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
                         })->addColumn('aksi', function($data){
                             $user = Auth::user();
                              $user->can('siswatabungan.delete') ? $delete = ' <a class="dropdown-item" role="button" id="hapus'. $data->id .'" onclick="hapus('. $data->id .')" data="'. $data->kode .'"><i class="fas fa-trash text-danger pr-1"></i> Hapus</a>
                                                                                <form action="'. route('tabungan.delete', [$data->id, $data->siswa->nis]) .'" method="POST" id="form-hapus'. $data->id .'">
                                                                                    '.csrf_field().'
                                                                                    '.method_field('DELETE').'
                                                                                </form>' : $delete = '';
                             $user->can('siswatabungan.update') ? $update = '<a class="dropdown-item" href="'. route('tabungan.edit', [$data->siswa->nis, $data->id]) .'"><i class="fas fa-pencil-alt text-primary pr-1"></i> Edit</a>' : $update = '';
                             $menu = '';
                              if($user->canany(['siswatabungan.delete', 'siswatabungan.update'])){
                                  $menu = '<button class="btn btn-none" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="fas fa-ellipsis-v"></i>
                                            </button>
                                            <div class="dropdown-menu dropdown-menu-right border-0" aria-labelledby="dropdownMenuButton">
                                            <a class="dropdown-item" href="'.route('tabungan.cetak', $data->siswa->nis).'?cetak='.$data->id.'" target="_blank"><i class="fas fa-file-pdf text-danger pr-1"></i> Cetak</a>
                                            '.$update.'
                                            '.$delete.'
                                            </div>';
                              }
                              return '<div class="dropdown">
                                        '.$menu.'
                                      </div>';

                         })
                         ->rawColumns(['tanggal', 'tipe', 'nominal', 'sisa_tagihan', 'aksi'])
                         ->make(true);
    }

    public function cetak(Request $request, $nis)
    {
        $siswa = Siswa::where('nis', $nis)->firstOrFail();
        $cetak = explode(',', $request->cetak);
        $tabungan = TabunganSiswa::with(['siswa', 'kelas'])
                                   ->whereIn('id', $cetak)
                                   ->where('siswa_id', $siswa->id)
                                   ->latest()
                                   ->get();

        $cetak = 'TabunganSiswa' . $siswa->nama . '.pdf';


        // return view('backend.siswa.tabungan.cetak', compact('tabungan'));
        $pdf = PDF::loadview('backend.siswa.tabungan.cetak', compact('tabungan', 'siswa'))
                    ->setPaper('f4', 'portrait');
        return $pdf->stream($cetak);
    }
}
