<?php

namespace Database\Seeders;

use App\Models\TahunAkademik;
use Illuminate\Database\Seeder;

class TahunAkdemikSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data = [
            [
                'awal' => '2019-05',
                'akhir' => '2022-05'
            ],
            [
                'awal' => '2020-05',
                'akhir' => '2023-05'
            ],
            [
                'awal' => '2021-05',
                'akhir' => '2024-05'
            ]
            ];
        foreach($data as $row){
            TahunAkademik::create([
                'awal' => $row['awal'],
                'akhir' => $row['akhir']
            ]);
        }
    }
}
