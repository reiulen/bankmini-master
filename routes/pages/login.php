<?php

use App\Http\Controllers\AuthController;

Route::group(['prefix' => 'login', 'as' => 'login.'], function(){
    Route::get('/', [AuthController::class, 'index'])->name('index');
    Route::post('/', [AuthController::class, 'login'])->name('proses');
});