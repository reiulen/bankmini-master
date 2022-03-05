<?php

use App\Http\Controllers\DanaAwalController;

Route::group(['prefix' => 'danaawal', 'as' => 'danaawal.'], function () {
    Route::get('/', [DanaAwalController::class, 'index'])->name('index');
});
