<?php

use App\Http\Controllers\SettingController;

Route::resource('/setting', SettingController::class);
Route::group(['prefix' => 'setting', 'as' => 'setting.'], function(){
    Route::get('/menu/preview', [SettingController::class, 'preview'])->name('preview');
});
