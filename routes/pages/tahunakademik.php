<?php

use App\Http\Controllers\AkademikController;

Route::group(['prefix' => 'tahunakademik', 'as' => 'tahunakademik.'], function () {
    Route::get('/', [AkademikController::class, 'index'])->name('index');
});
