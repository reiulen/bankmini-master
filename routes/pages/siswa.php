<?php

use App\Http\Controllers\SiswaController;

Route::group(['prefix' => 'siswa', 'as' => 'siswa.'], function() {
    Route::get('/', [SiswaController::class, 'index'])->name('index');
    Route::get('/tambahsiswa', [SiswaController::class, 'create'])->name('create');
    Route::post('/tambahsiswa', [SiswaController::class, 'store'])->name('store');
    Route::get('/{siswa:nis}/lihatsiswa', [SiswaController::class, 'show'])->name('show');
    Route::get('/{siswa:nis}/editsiswa', [SiswaController::class, 'edit'])->name('edit');
    Route::put('/{siswa:nis}/editsiswa', [SiswaController::class, 'update'])->name('update');
    Route::delete('/{siswa:nis}/siswa', [SiswaController::class, 'delete'])->name('delete');
    Route::get('/eksportsiswa', [SiswaController::class, 'eksport'])->name('eksport');
    Route::group(['prefix' => 'ajax', 'as' => 'ajax.'], function() {
        Route::post('dataTable', [SiswaController::class, 'datatable'])->name('datatable');
    });
});
