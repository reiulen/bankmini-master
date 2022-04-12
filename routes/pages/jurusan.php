<?php

use App\Http\Controllers\JurusanController;

Route::group(['middleware' => ['permission:jurusan.index']], function(){
    Route::resource('/jurusan', JurusanController::class);
    Route::group(['prefix' => 'jurusan', 'as' => 'jurusan.'], function(){
        Route::post('ajax/getdata/{jurusan:id}', [JurusanController::class, 'getData'])->name('getdata');
        Route::post('ajax/data', [JurusanController::class, 'data'])->name('data');
    });
});
