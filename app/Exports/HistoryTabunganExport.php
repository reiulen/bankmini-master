<?php

namespace App\Exports;

use App\Models\Siswa;
use App\Models\TabunganSiswa;
use Illuminate\Support\Facades\Auth;
use Maatwebsite\Excel\Concerns\WithMapping;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;

class HistoryTabunganExport implements FromCollection, ShouldAutoSize, WithHeadings, WithMapping
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
             $data =  TabunganSiswa::select('*')
                                    ->with(['petugas', 'siswa'])
                                    ->where('siswa_id', Auth::guard('siswa')->user()->id)
                                    ->tanggal($tanggal)
                                    ->filter($this->request->filter)
                                    ->order($this->request->filter)
                                    ->latest()
                                    ->get();
        }else{
            $data =  TabunganSiswa::select('*')
                                    ->with(['petugas', 'siswa'])
                                    ->tanggal($tanggal)
                                    ->filter($this->request->filter)
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
            $data->Siswa->nama,
            $data->petugas->nama,
            $data->tipe == 1 ? 'Debit' : 'Kredit',
            format_rupiah($data->nominal),
            format_rupiah($data->sisa_saldo)
        ];
    }

    public function headings(): array
    {
        return [
            'Tanggal',
            'NIS',
            'Nama',
            'Petugas',
            'Tipe',
            'Nominal',
            'Saldo'
        ];
    }

}
