<?php

use App\Http\Controllers\DanaAwalController;
use App\Http\Controllers\PemasukanController;

Route::group(['prefix' => 'laporantabungan', 'as' => 'laptabungan.'], function() {
    Route::get('/', [PemasukanController::class, 'index'])->name('index');
    Route::get('/cetak-pdf', [PemasukanController::class, 'cetak'])->name('cetak-pdf');
    Route::get('/cetak-excel', [PemasukanController::class, 'export'])->name('cetak-excel');
    Route::get('ajax/dataTables', [PemasukanController::class, 'datatable'])->name('getdataTables');
    Route::post('ajax/dataTables', [PemasukanController::class, 'datatable'])->name('dataTables');
});
