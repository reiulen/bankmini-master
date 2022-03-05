<?php

use App\Http\Controllers\SiswaController;

Route::group(['prefix' => 'siswa', 'as' => 'siswa.'], function() {
    Route::get('/', [SiswaController::class, 'index'])->name('index');
    Route::get('/tambahsiswa', [SiswaController::class, 'create'])->name('create');
    Route::post('/tambahsiswa', [SiswaController::class, 'store'])->name('store');
    Route::get('/{siswa:id}/lihatsiswa', [SiswaController::class, 'show'])->name('show');
    Route::get('/{siswa:id}/editsiswa', [SiswaController::class, 'edit'])->name('edit');
    Route::put('/{siswa:id}/editsiswa', [SiswaController::class, 'update'])->name('update');
    Route::delete('/{siswa:id}/siswa', [SiswaController::class, 'delete'])->name('delete');
    Route::get('/eksportsiswa', [SiswaController::class, 'eksport'])->name('eksport');
    
});