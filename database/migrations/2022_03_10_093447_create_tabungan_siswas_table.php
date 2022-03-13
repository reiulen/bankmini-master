<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTabunganSiswasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tabungan_siswas', function (Blueprint $table) {
            $table->id();
            $table->foreignId('siswa_id');
            $table->string('kode');
            $table->string('tanggal');
            $table->string('petugas');
            $table->string('tipe');
            $table->string('keterangan');
            $table->string('nominal');
            $table->string('sisa_saldo');
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
        Schema::dropIfExists('tabungan_siswas');
    }
}
