<?php

namespace Database\Seeders;

use App\Models\PembayaranSiswa;
use Illuminate\Database\Seeder;


class PembayaranSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        PembayaranSiswa::create([
            'kode' => 'PS04202200005',
            'siswa_id' => '1',
            'petugas_id' => '6',
            'dana_awal_id' => '6',
            'keterangan' => '-',
            'nominal' => '100000',
            'sisa_tagihan' => '0',
            'kelas_id' => '1',
            'tahun_akademik_id' => '1',
            'tanggal' => '5 April 2022',
            'bulan' => 'April',
            'tahun' => '2022',
        ]);
    }
}
