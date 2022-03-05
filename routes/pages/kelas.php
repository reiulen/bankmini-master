<?php

use App\Http\Controllers\KelasController;

Route::group(['prefix' => 'kelas', 'as' => 'kelas.'], function() {
    Route::get('/', [KelasController::class, 'index'])->name('index');
});
