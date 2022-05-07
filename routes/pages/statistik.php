<?php

use App\Http\Controllers\StatistikController;

Route::group(['prefix' => 'statistik', 'as' => 'statistiktabungan.'], function() {
    Route::get('/tabungan', [StatistikController::class, 'tabungan'])->name('index');
    Route::post('/tabungan/getData', [StatistikController::class, 'getDataTabungan'])->name('getData');
    Route::post('/tabungan/getDatatable', [StatistikController::class, 'getDataTableTabungan'])->name('getDatatable');
});

Route::group(['prefix' => 'statistik', 'as' => 'statistikpembayaran.'], function() {
    Route::get('/pembayaran', [StatistikController::class, 'pembayaran'])->name('index');
    Route::post('/pembayaran/getData', [StatistikController::class, 'getDataPembayaran'])->name('getData');
    Route::post('/pembayaran/getDatatable', [StatistikController::class, 'getDataTablePembayaran'])->name('getDatatable');
});
