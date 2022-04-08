<?php

namespace App\Exports;

use App\Models\DanaAwal;
use App\Models\Siswa;
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
        $dana = DanaAwal::select('dana')->where('tahun_akademik_id', $data->tahun_akademik_id)->get();
        foreach($dana as $row){
            $d[] = $row->dana;
        }
        return [
            $data->nis,
            $data->nama,
            preg_replace("/[^a-zA-Z]/", "", $d)
        ];
    }

    public function headings(): array
    {
        return [
            'NIS',
            'Nama',
        ];
    }

}
