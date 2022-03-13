<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePemmbayaranSiswasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pemmbayaran_siswas', function (Blueprint $table) {
            $table->id();
            $table->foreignId('siswa_id');
            $table->string('kode');
            $table->string('petugas');
            $table->foreignId('pembayaran_id');
            $table->string('keterangan');
            $table->string('nominal');
            $table->string('sisa_tagihan');
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
        Schema::dropIfExists('pemmbayaran_siswas');
    }
}
