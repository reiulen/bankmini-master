<?php

use App\Http\Controllers\DanaAwalController;
use App\Http\Controllers\TunggakanController;

Route::get('/data/laporantunggakan/ajax/tables', [TunggakanController::class, 'getData']);
Route::group(['middleware' => ['permission:laporantunggakan.index'],'prefix' => 'laporantunggakan', 'as' => 'laporantunggakan.'], function(){
    Route::get('/', [TunggakanController::class, 'index'])->name('index');
    Route::get('/sisatagihan/{nis}', [TunggakanController::class, 'sisatagihan'])->name('sisatagihan');
    Route::get('/cetak-pdf', [TunggakanController::class, 'cetak'])->name('cetak-pdf');
    Route::get('/cetak-excel', [TunggakanController::class, 'export'])->name('cetak-excel');
    Route::get('ajax/siswa', [TunggakanController::class, 'dataSiswa'])->name('dataSiswa');
    Route::post('ajax/dataTables', [TunggakanController::class, 'datatable'])->name('dataTables');
});
