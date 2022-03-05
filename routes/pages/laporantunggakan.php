<?php

use App\Http\Controllers\TunggakanController;

Route::group(['prefix' => 'laporantunggakan', 'as' => 'laporantunggakan.'], function(){
    Route::get('/', [TunggakanController::class, 'index'])->name('index');
});
