<?php

use App\Http\Controllers\PemasukanController;

Route::group(['prefix' => 'laporantabungan', 'as' => 'laptabungan.'], function() {
    Route::get('/', [PemasukanController::class, 'index'])->name('index');
    Route::post('ajax/dataTables', [PemasukanController::class, 'datatable'])->name('dataTables');
});
