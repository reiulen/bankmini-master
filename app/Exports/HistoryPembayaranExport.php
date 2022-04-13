<?php

namespace App\Exports;

use App\Models\Siswa;
use App\Models\PembayaranSiswa;
use Illuminate\Support\Facades\Auth;
use Maatwebsite\Excel\Concerns\WithMapping;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;

class HistoryPembayaranExport implements FromCollection, ShouldAutoSize, WithHeadings, WithMapping
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
        $tanggal = [$this->request->dari, $this->request->sampai];
        if(Auth::guard('siswa')->user()){
           $data =  PembayaranSiswa::select('id','created_at', 'siswa_id', 'dana_awal_id', 'petugas_id', 'nominal', 'sisa_tagihan', 'keterangan')
                                    ->with(['petugas', 'danaawal', 'siswa'])
                                    ->where('siswa_id', Auth::guard('siswa')->user()->id)
                                    ->filter($this->request->filter)
                                    ->tanggal($tanggal)
                                    ->order($this->request->filter)
                                    ->latest()
                                    ->get();
        }else{
            $data =  PembayaranSiswa::select('created_at', 'siswa_id', 'dana_awal_id', 'petugas_id', 'nominal', 'sisa_tagihan', 'keterangan')
                                    ->with(['petugas', 'danaawal', 'siswa'])
                                    ->filter($this->request->filter)
                                    ->tanggal($tanggal)
                                    ->order($this->request->filter)
                                    ->latest()
                                    ->get();
        }
        return $data;
    }

    public function map($data): array
    {
        return [
            tanggal($data->created_at),
            $data->siswa->nis,
            $data->siswa->nama,
            $data->danaawal->dana,
            $data->petugas->nama,
            $data->keterangan,
            format_rupiah($data->nominal),
            format_rupiah($data->sisa_tagihan)
        ];
    }

    public function headings(): array
    {
        return [
            'Tanggal',
            'NIS',
            'Nama',
            'Pembayaran',
            'Petugas',
            'Keterangan',
            'Nominal',
            'Sisa Tagihan',
        ];
    }

}
