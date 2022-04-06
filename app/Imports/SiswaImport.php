<?php

namespace App\Imports;

use App\Models\siswa;
use Maatwebsite\Excel\Concerns\ToModel;

class SiswaImport implements ToModel
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        return new siswa([
            'foto' => 'upload/foto/siswa/siswa.png',
            'nama' => $row[1],
            'nis' => $row[3],
            'tahun_akademik_id' => $row[4],
            'kelas_id' => $row[5],
            'jurusan_id' => $row[6],
            'status' => 'Aktif'
        ]);
    }
}
