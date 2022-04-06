<?php

namespace App\Exports;

use App\Models\Siswa;
use App\Models\TabunganSiswa;
use Maatwebsite\Excel\Concerns\FromQuery;
use Maatwebsite\Excel\Concerns\WithEvents;
use Maatwebsite\Excel\Concerns\WithMapping;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;


class LaporanTabunganExport implements FromCollection, ShouldAutoSize, WithHeadings, WithMapping
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
                ->filtercetak($this->request )
                ->ordercetak($this->request )
                ->get();
        return $data;
    }

    public function map($data): array
    {
        $tabungan = TabunganSiswa::with(['petugas'])->get();
        $debit = $tabungan->where('siswa_id', $data->id)->where('tipe','1')->sum('nominal');
        $kredit = $tabungan->where('siswa_id', $data->id)->where('tipe','2')->sum('nominal');
        return [
            $data->nis,
            $data->nama,
            $data->kelas->kelas . ' ' . $data->jurusan->nama . ' ' . $data->kelas->urut_kelas ,
            format_rupiah($debit),
            format_rupiah($kredit),
            format_rupiah($debit - $kredit)
        ];
    }

    public function headings(): array
    {
        return [
            'NIS',
            'Nama',
            'Kelas',
            'Debit',
            'Kredit',
            'Saldo'
        ];
    }

}
