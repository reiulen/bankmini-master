<?php

use App\Http\Controllers\DanaAwalController;
use App\Http\Controllers\TunggakanController;

Route::group(['middleware' => ['permission:laporantunggakan.index'],'prefix' => 'laporantunggakan', 'as' => 'laporantunggakan.'], function(){
    Route::get('/', [TunggakanController::class, 'index'])->name('index');
    Route::get('/cetak-pdf', [TunggakanController::class, 'cetak'])->name('cetak-pdf');
    Route::get('/cetak-excel', [TunggakanController::class, 'export'])->name('cetak-excel');
    Route::get('ajax/siswa', [TunggakanController::class, 'dataSiswa'])->name('dataSiswa');
    Route::get('ajax/tables', [TunggakanController::class, 'table'])->name('cardTable');
    Route::post('ajax/dataTables', [TunggakanController::class, 'datatable'])->name('dataTables');
});
