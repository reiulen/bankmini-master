<?php

use App\Http\Controllers\HistoryController;

Route::group(['prefix' => 'historytransaksi', 'as' => 'historytransaksi.'], function(){
    Route::get('/', [HistoryController::class, 'indexPembayaran'])->name('index');
    Route::get('/sisatagihan', [HistoryController::class, 'tagihan'])->name('tagihan');
    Route::group(['prefix' => 'ajax', 'as' => 'ajax.'] , function() {
        Route::post('/dataTable', [HistoryController::class, 'dataTablePembayaran'])->name('dataTables');
    });
});
