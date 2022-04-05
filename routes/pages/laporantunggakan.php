<?php

use App\Http\Controllers\DanaAwalController;
use App\Http\Controllers\TunggakanController;

Route::group(['prefix' => 'laporantunggakan', 'as' => 'laporantunggakan.'], function(){
    Route::get('/', [TunggakanController::class, 'index'])->name('index');
    Route::get('ajax/siswa', [TunggakanController::class, 'dataSiswa'])->name('dataSiswa');
    Route::get('ajax/tables', [TunggakanController::class, 'table'])->name('cardTable');
    Route::post('ajax/dataTables', [TunggakanController::class, 'datatable'])->name('dataTables');
});
