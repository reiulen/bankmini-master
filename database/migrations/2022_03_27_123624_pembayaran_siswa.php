<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class PembayaranSiswa extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
         Schema::create('pembayaran_siswas', function (Blueprint $table) {
            $table->id();
            $table->string('kode');
            $table->foreignId('siswa_id');
            $table->foreignId('petugas_id');
            $table->foreignId('dana_awal_id');
            $table->string('keterangan');
            $table->string('nominal');
            $table->string('sisa_tagihan');
            $table->foreignId('kelas_id');
            $table->string('bulan');
            $table->string('tahun');
            $table->timestamps();

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
}
