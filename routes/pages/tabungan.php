<?php

use App\Http\Controllers\TabunganController;

Route::group(['prefix' => 'siswa/tabungan', 'as' => 'tabungan.'], function() {
    Route::get('{siswa:id}/', [TabunganController::class, 'index'])->name('index');
    Route::get('{siswa:id}/tambahtabungan', [TabunganController::class, 'create'])->name('create');
    Route::get('/{tabungan:id}/edittabungan/{siswa:id}', [TabunganController::class, 'edit'])->name('edit');
});
