<?php

namespace Database\Seeders;

use App\Models\Jurusan;
use App\Models\Kelas;
use Illuminate\Database\Seeder;

class KelasSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data = [[
                    'kelas' => '12',
                    'jurusan_id' => '1',
                    'urut_kelas' => '1',
                ],
                [
                    'kelas' => '12',
                    'jurusan_id' => '1',
                    'urut_kelas' => '2',
                ],
                [
                    'kelas' => '12',
                    'jurusan_id' => '1',
                    'urut_kelas' => '3',
                ],
                [
                    'kelas' => '12',
                    'jurusan_id' => '1',
                    'urut_kelas' => '4',
                ],
                [
                    'kelas' => '12',
                    'jurusan_id' => '2',
                    'urut_kelas' => '1',
                ],
                [
                    'kelas' => '12',
                    'jurusan_id' => '2',
                    'urut_kelas' => '2',
                ],
                [
                    'kelas' => '12',
                    'jurusan_id' => '2',
                    'urut_kelas' => '3',
                ],
                [
                    'kelas' => '12',
                    'jurusan_id' => '3',
                    'urut_kelas' => '1',
                ],
                [
                    'kelas' => '12',
                    'jurusan_id' => '3',
                    'urut_kelas' => '2',
                ],
                [
                    'kelas' => '12',
                    'jurusan_id' => '3',
                    'urut_kelas' => '3',
                ],
                [
                    'kelas' => '12',
                    'jurusan_id' => '4',
                    'urut_kelas' => '1',
                ],
                [
                    'kelas' => '12',
                    'jurusan_id' => '4',
                    'urut_kelas' => '2',
                ],
                [
                    'kelas' => '12',
                    'jurusan_id' => '5',
                    'urut_kelas' => '1',
                ],
                [
                    'kelas' => '12',
                    'jurusan_id' => '5',
                    'urut_kelas' => '2',
                ],
                [
                    'kelas' => '12',
                    'jurusan_id' => '6',
                    'urut_kelas' => '1',
                ],
                [
                    'kelas' => '12',
                    'jurusan_id' => '7',
                    'urut_kelas' => '1',
                ],
                [
                    'kelas' => '11',
                    'jurusan_id' => '1',
                    'urut_kelas' => '1',
                ],
                [
                    'kelas' => '11',
                    'jurusan_id' => '1',
                    'urut_kelas' => '2',
                ],
                [
                    'kelas' => '11',
                    'jurusan_id' => '1',
                    'urut_kelas' => '3',
                ],
                [
                    'kelas' => '11',
                    'jurusan_id' => '1',
                    'urut_kelas' => '4',
                ],
                [
                    'kelas' => '11',
                    'jurusan_id' => '2',
                    'urut_kelas' => '1',
                ],
                [
                    'kelas' => '11',
                    'jurusan_id' => '2',
                    'urut_kelas' => '2',
                ],
                [
                    'kelas' => '11',
                    'jurusan_id' => '2',
                    'urut_kelas' => '3',
                ],
                [
                    'kelas' => '11',
                    'jurusan_id' => '3',
                    'urut_kelas' => '1',
                ],
                [
                    'kelas' => '11',
                    'jurusan_id' => '3',
                    'urut_kelas' => '2',
                ],
                [
                    'kelas' => '11',
                    'jurusan_id' => '3',
                    'urut_kelas' => '3',
                ],
                [
                    'kelas' => '11',
                    'jurusan_id' => '4',
                    'urut_kelas' => '1',
                ],
                [
                    'kelas' => '11',
                    'jurusan_id' => '4',
                    'urut_kelas' => '2',
                ],
                [
                    'kelas' => '11',
                    'jurusan_id' => '5',
                    'urut_kelas' => '1',
                ],
                [
                    'kelas' => '11',
                    'jurusan_id' => '5',
                    'urut_kelas' => '2',
                ],
                [
                    'kelas' => '11',
                    'jurusan_id' => '6',
                    'urut_kelas' => '1',
                ],
                [
                    'kelas' => '11',
                    'jurusan_id' => '7',
                    'urut_kelas' => '1',
                ],
                [
                    'kelas' => '10',
                    'jurusan_id' => '1',
                    'urut_kelas' => '1',
                ],
                [
                    'kelas' => '10',
                    'jurusan_id' => '1',
                    'urut_kelas' => '2',
                ],
                [
                    'kelas' => '10',
                    'jurusan_id' => '1',
                    'urut_kelas' => '3',
                ],
                [
                    'kelas' => '10',
                    'jurusan_id' => '1',
                    'urut_kelas' => '4',
                ],
                [
                    'kelas' => '10',
                    'jurusan_id' => '2',
                    'urut_kelas' => '1',
                ],
                [
                    'kelas' => '10',
                    'jurusan_id' => '2',
                    'urut_kelas' => '2',
                ],
                [
                    'kelas' => '10',
                    'jurusan_id' => '2',
                    'urut_kelas' => '3',
                ],
                [
                    'kelas' => '10',
                    'jurusan_id' => '3',
                    'urut_kelas' => '1',
                ],
                [
                    'kelas' => '10',
                    'jurusan_id' => '3',
                    'urut_kelas' => '2',
                ],
                [
                    'kelas' => '10',
                    'jurusan_id' => '3',
                    'urut_kelas' => '3',
                ],
                [
                    'kelas' => '10',
                    'jurusan_id' => '4',
                    'urut_kelas' => '1',
                ],
                [
                    'kelas' => '10',
                    'jurusan_id' => '4',
                    'urut_kelas' => '2',
                ],
                [
                    'kelas' => '10',
                    'jurusan_id' => '5',
                    'urut_kelas' => '1',
                ],
                [
                    'kelas' => '10',
                    'jurusan_id' => '5',
                    'urut_kelas' => '2',
                ],
                [
                    'kelas' => '10',
                    'jurusan_id' => '6',
                    'urut_kelas' => '1',
                ],
                [
                    'kelas' => '10',
                    'jurusan_id' => '7',
                    'urut_kelas' => '1',
                ],
        ];

        foreach($data as $row){
            Kelas::create([
                'kelas' => $row['kelas'],
                'jurusan_id' => $row['jurusan_id'],
                'urut_kelas' => $row['urut_kelas'],
            ]);
        }
    }
}
