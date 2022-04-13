<?php

use App\Http\Controllers\HistoryController;

Route::group(['prefix' => 'historytransaksi', 'as' => 'historytransaksi.'], function(){
    Route::get('/', [HistoryController::class, 'indexPembayaran'])->name('index');
    Route::get('/cetak-pdf', [HistoryController::class, 'cetakpembayaranpdf'])->name('cetak-pdf');
    Route::get('/cetak-excel', [HistoryController::class, 'cetakpembayaranexcel'])->name('cetak-excel');
    Route::get('/sisatagihan', [HistoryController::class, 'tagihan'])->name('tagihan');
    Route::group(['prefix' => 'ajax', 'as' => 'ajax.'] , function() {
        Route::post('/dataTable', [HistoryController::class, 'dataTablePembayaran'])->name('dataTables');
    });
});
