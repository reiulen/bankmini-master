<?php

namespace Database\Seeders;

use App\Models\Jurusan;
use Illuminate\Database\Seeder;

class JurusanSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data = [[
                    'jurusan' => 'Akuntansi dan Keuangan Lembaga',
                    'nama' => 'AKL'
                ],
                [
                    'jurusan' => 'Bisnis Daring dan Pemasaran',
                    'nama' => 'BDP'
                ],
                 [
                    'jurusan' => 'Otomasi Tata Kelola Perkantoran',
                    'nama' => 'OTKP'
                ],
                 [
                    'jurusan' => 'Akomodasi Perhotelan',
                    'nama' => 'Hotel'
                ],
                 [
                    'jurusan' => 'Tata Boga',
                    'nama' => 'TB'
                ],
                [
                    'jurusan' => 'Multimedia',
                    'nama' => 'MM'
                ],
                [
                    'jurusan' => 'Rekayasa Perangkat Lunak',
                    'nama' => 'RPL'
                ],
        ];

        foreach($data as $row){
            Jurusan::create([
                'jurusan' => $row['jurusan'],
                'nama' => $row['nama'],
            ]);
        }
    }
}
