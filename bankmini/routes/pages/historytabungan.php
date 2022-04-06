<?php

use App\Http\Controllers\HistoryController;

Route::group(['prefix' => 'historytabungan', 'as' => 'historytabungan.'], function(){
    Route::get('/', [HistoryController::class, 'index'])->name('index');
    Route::group(['prefix' => 'ajax', 'as' => 'ajax.'] , function() {
        Route::post('/dataTable', [HistoryController::class, 'dataTable'])->name('dataTables');
    });
});
