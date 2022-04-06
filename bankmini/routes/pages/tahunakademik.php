<?php

use App\Http\Controllers\AkademikController;

Route::resource('/tahunakademik', AkademikController::class);
Route::group(['prefix' => 'tahunakademik', 'as' => 'tahunakademik.'], function(){
    Route::post('ajax/data', [AkademikController::class, 'data'])->name('data');
});
