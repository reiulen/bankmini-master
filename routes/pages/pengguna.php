<?php

use App\Http\Controllers\PenggunaController;

Route::group(['middleware' => ['permission:pengguna.index'],'prefix' => 'pengguna', 'as' => 'pengguna.'], function() {
    Route::get('/', [PenggunaController::class, 'index'])->name('index');
    Route::get('/tambahpengguna', [PenggunaController::class, 'create'])->name('create');
    Route::post('/tambahpengguna', [PenggunaController::class, 'store'])->name('store');
    Route::get('/{pengguna:id}/editpengguna', [PenggunaController::class, 'edit'])->name('edit');
    Route::put('/{pengguna:id}/editpengguna', [PenggunaController::class, 'update'])->name('update');
    Route::delete('/{pengguna:id}/pengguna', [PenggunaController::class, 'delete'])->name('delete');
});
