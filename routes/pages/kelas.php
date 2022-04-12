<?php

use App\Http\Controllers\KelasController;

Route::group(['middleware' => ['permission:kelas.index']], function(){
    Route::resource('/kelas', KelasController::class);
    Route::group(['prefix' => 'kelas', 'as' => 'kelas.'], function(){
        Route::get('ajax/getdata/{kelas:id}', [KelasController::class, 'getData'])->name('getdata');
        Route::post('ajax/data', [KelasController::class, 'data'])->name('data');
    });
});
