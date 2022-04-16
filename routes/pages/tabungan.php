<?php

use App\Http\Controllers\TabunganController;

Route::group(['prefix' => 'siswa/tabungan', 'as' => 'tabungan.'], function() {
    Route::get('{siswa:id}/', [TabunganController::class, 'index'])->name('index');
    Route::get('{siswa:id}/cetak', [TabunganController::class, 'cetak'])->name('cetak');
    Route::get('{siswa:id}/tambahtabungan', [TabunganController::class, 'create'])->name('create');
    Route::post('{siswa:id}/tambahtabungan', [TabunganController::class, 'store'])->name('store');
    Route::get('/{tabungan:id}/edittabungan/{siswa:id}', [TabunganController::class, 'edit'])->name('edit');
    Route::put('/{tabungan:id}/edittabungan/{siswa:id}', [TabunganController::class, 'update'])->name('update');
    Route::delete('/{tabungan:id}/{siswa:id}', [TabunganController::class, 'delete'])->name('delete');
    Route::group(['prefix' => 'ajax', 'as' => 'ajax.'] , function() {
        Route::post('/{siswa:id}/dataTable', [TabunganController::class, 'dataTable'])->name('dataTables');
    });
});
