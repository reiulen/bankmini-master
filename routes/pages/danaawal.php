<?php

use App\Http\Controllers\DanaAwalController;

Route::resource('/danaawal', DanaAwalController::class);
Route::group(['prefix' => 'danaawal', 'as' => 'danaawal.'], function(){
    Route::get('ajax/getdata/{danaawal:id}', [DanaAwalController::class, 'getData'])->name('getdata');
    Route::post('ajax/data', [DanaAwalController::class, 'data'])->name('data');
});
