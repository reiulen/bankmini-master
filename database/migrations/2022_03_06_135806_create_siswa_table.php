<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSiswaTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('siswa', function (Blueprint $table) {
            $table->id();
            $table->string('foto');
            $table->string('nama');
            $table->string('nisn');
            $table->string('nis');
            $table->string('tahun_masuk');
            $table->string('kelas_id');
            $table->string('jenis_kelamin');
            $table->string('tempat_lahir');
            $table->date('tgl_lahir');
            $table->string('alamat');
            $table->string('anak_ke');
            $table->string('warga_negara');
            $table->string('agama');
            $table->string('asal_sekolah');
            $table->string('no_ijazah');
            $table->string('tahun_lulus');
            $table->string('alamat_sekolah');
            $table->string('ayah')->nullable()->default('-');
            $table->string('ibu')->nullable()->default('-');
            $table->string('alamat_ortu')->nullable()->default('-');
            $table->string('pekerjaan_ayah')->nullable()->default('-');
            $table->string('pekerjaan_ibu')->nullable()->default('-');
            $table->string('wali')->nullable()->default('-');
            $table->string('alamat_wali')->nullable()->default('-');
            $table->string('kerja_wali')->nullable()->default('-');
            $table->string('hubungan_wali')->nullable()->default('-');
            $table->string('status')->nullable()->default('Aktif');
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
        Schema::dropIfExists('siswa');
    }
}
