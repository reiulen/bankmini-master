<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class TabunganSiswaFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'kode' => 'TS04202200008',
            'siswa_id' => '6',
            'petugas_id' => '6',
            'tipe' => '1',
            'keterangan' => '-',
            'nominal' => '100000',
            'kelas_id' => '1',
            'sisa_saldo' => '1000000',
            'tanggal' => '7 April 2022',
            'bulan' => 'April',
            'tahun' => '2022',
        ];
    }
}
