<?php

use App\Http\Controllers\TabunganController;

Route::group(['prefix' => 'siswa/tabungan', 'as' => 'tabungan.'], function() {
    Route::get('/', [TabunganController::class, 'index'])->name('index');
    Route::get('/tambahtabungan', [TabunganController::class, 'create'])->name('create');
    Route::get('/{tabungan:id}/edittabungan', [TabunganController::class, 'edit'])->name('edit');


});