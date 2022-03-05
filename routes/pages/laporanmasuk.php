<?php

use App\Http\Controllers\PemasukanController;

Route::group(['prefix' => 'pemasukan', 'as' => 'pemasukan.'], function() {
    Route::get('/', [PemasukanController::class, 'index'])->name('index');
});
