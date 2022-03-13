<?php

use App\Http\Controllers\PembayaranController;

Route::group(['prefix' => 'siswa/pembayaran', 'as' => 'pembayaran.'], function() {
    Route::get('{siswa:id}/', [PembayaranController::class, 'index'])->name('index');
    Route::get('{siswa:id}/tambahpembayaran', [PembayaranController::class, 'create'])->name('create');
    Route::post('{siswa:id}/tambahpembayaran', [PembayaranController::class, 'store'])->name('store');
    Route::get('/{pembayaran:id}/editpembayaran/{siswa:id}', [PembayaranController::class, 'edit'])->name('edit');
    Route::put('/{pembayaran:id}/editpembayaran/{siswa:id}', [PembayaranController::class, 'update'])->name('update');
    Route::get('/{pembayaran:id}/sisatagihan/{siswa:id}', [PembayaranController::class, 'tagihan'])->name('tagihan');
    Route::delete('/{pembayaran:id}/{siswa:id}', [PembayaranController::class, 'delete'])->name('delete');
});