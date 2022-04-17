<?php

use App\Http\Controllers\HistoryController;

Route::group(['prefix' => 'historytabungan', 'as' => 'historytabungan.'], function(){
    Route::get('/', [HistoryController::class, 'index'])->name('index');
    Route::get('/cetakkwitansi', [HistoryController::class, 'cetakkwitansitabungan'])->name('cetakkwitansi');
    Route::get('/cetak-pdf', [HistoryController::class, 'cetaktabunganpdf'])->name('cetak-pdf');
    Route::get('/cetak-excel', [HistoryController::class, 'cetaktabunganexcel'])->name('cetak-excel');
    Route::group(['prefix' => 'ajax', 'as' => 'ajax.'] , function() {
        Route::post('/dataTable', [HistoryController::class, 'dataTable'])->name('dataTables');
    });
});
