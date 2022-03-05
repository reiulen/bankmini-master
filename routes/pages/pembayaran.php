<?php

use App\Http\Controllers\PembayaranController;

Route::group(['prefix' => 'siswa/pembayaran', 'as' => 'pembayaran.'], function() {
    Route::get('/', [PembayaranController::class, 'index'])->name('index');
    Route::get('/tambahpembayaran', [PembayaranController::class, 'create'])->name('create');
    Route::put('/tambahpembayaran', [PembayaranController::class, 'store'])->name('store');
    Route::get('/{pembayaran:id}/editpembayaran', [PembayaranController::class, 'edit'])->name('edit');
    Route::get('/{pembayaran:id}/sisatagihan', [PembayaranController::class, 'tagihan'])->name('tagihan');
});
