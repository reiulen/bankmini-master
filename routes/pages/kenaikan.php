<?php

use App\Http\Controllers\KenaikanController;

Route::group(['middleware' => ['permission:kenaikan.index']], function(){
    Route::resource('/kenaikan', KenaikanController::class);
    Route::group(['prefix' => 'kenaikan', 'as' => 'kenaikan.'], function(){
        Route::post('ajax/dataTables', [KenaikanController::class, 'datatable'])->name('dataTables');
    });
});
