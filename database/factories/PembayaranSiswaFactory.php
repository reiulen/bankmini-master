<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class PembayaranSiswaFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'kode' => 'PS04202200005',
            'siswa_id' => '1',
            'petugas_id' => '6',
            'dana_awal_id' => '6',
            'keterangan' => '-',
            'nominal' => '100000',
            'sisa_tagihan' => '0',
            'kelas_id' => '1',
            'jurusan_id' => '1',
            'tahun_akademik_id' => '1',
            'tanggal' => '5 April 2022',
            'bulan' => 'April',
            'tahun' => '2022',
        ];
    }
}
