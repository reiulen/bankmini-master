<?php

use App\Http\Controllers\AkademikController;

Route::group(['middleware' => ['permission:tahunakademik.index']], function(){
    Route::resource('/tahunakademik', AkademikController::class);
    Route::group(['prefix' => 'tahunakademik', 'as' => 'tahunakademik.'], function(){
        Route::post('ajax/data', [AkademikController::class, 'data'])->name('data');
    });
});
