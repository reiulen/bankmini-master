<?php

use App\Http\Controllers\KenaikanController;

Route::resource('/kenaikan', KenaikanController::class);

Route::group(['prefix' => 'kenaikan', 'as' => 'kenaikan.'], function(){
    Route::post('ajax/dataTables', [KenaikanController::class, 'datatable'])->name('dataTables');
});
