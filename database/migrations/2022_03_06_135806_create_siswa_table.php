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
            $table->string('nama');
            $table->string('nisn');
            $table->string('nis');
            $table->string('tahun_masuk');
            $table->string('kelas');
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
            $table->string('nilai_un');
            $table->string('ayah');
            $table->string('ibu');
            $table->string('alamat_ortu');
            $table->string('kerja_ayah');
            $table->string('kerja_ibu');
            $table->string('wali');
            $table->string('alamat_wali');
            $table->string('kerja_wali');
            $table->string('hubungan_wali');
            $table->string('status');
            $table->string('sisa_dsp');
            $table->string('sisa_infaq');
            $table->string('sisa_ki');
            $table->string('sisa_pkl');
            $table->string('sisa_kelas_10');
            $table->string('sisa_kelas_11');
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
