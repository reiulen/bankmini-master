<?php

namespace App\Exports;

use App\Models\Siswa;
use App\Models\DanaAwal;
use App\Models\PembayaranSiswa;
use Maatwebsite\Excel\Concerns\WithMapping;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;

class LaporanTunggakanExport implements FromCollection, ShouldAutoSize, WithHeadings, WithMapping
{
    /**
    * @return \Illuminate\Support\Collection
    */

    public $request;
    public function __construct($request)
    {
        $this->request = $request;
    }

    public function collection()
    {
        $data = Siswa::with(['kelas', 'tahunakademik', 'jurusan'])
                ->filtercetak($this->request)
                ->ordercetak($this->request)
                ->get();
        return $data;
    }

    public function map($data): array
    {
        $dana = DanaAwal::where('tahun_akademik_id', $data->tahun_akademik_id)->orderBy('dana', 'asc')->get();
        $pembayaran = PembayaranSiswa::FilterTable($this->request)->where('tahun_akademik_id', $data->tahun_akademik_id)->get();
        foreach($dana as $rows){
            $tagihan = $pembayaran->where('dana_awal_id', $rows->id)
                                  ->where('siswa_id', $data->id)
                                  ->sum('nominal');
            $sisa[] = format_rupiah(preg_replace("/[^0-9]/", "", $tagihan - $rows->nominal));
        }
        //ubaharray $d[] menjadi string
        $a = implode(',', $sisa);
        //gabungkan string $d[] dengan string
        $b = $data->nis . ',' . $data->nama . ',' . $a;
        //ubah string menjadi array
        $c = explode(',', $b);
        return $c;
    }

    public function headings(): array
    {
        $data = Siswa::with(['kelas', 'tahunakademik', 'jurusan'])
                ->filtercetak($this->request)
                ->ordercetak($this->request)
                ->get();
        $dana = DanaAwal::select('dana')->whereIn('tahun_akademik_id', $data->pluck('tahun_akademik_id')->toArray())->orderBy('dana', 'asc')->get();
        foreach($dana as $row){
            $d[] = $row->dana;
        }
        //ubaharray $d[] menjadi string
        $a = implode(',', $d);
        //gabungkan string $d[] dengan string
        $b = 'NIS,Nama,' . $a;
        //ubah string menjadi array
        $c = explode(',', $b);
        return $c;
    }

}
