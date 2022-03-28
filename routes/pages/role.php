<?php

use App\Http\Controllers\RoleController;

Route::group(['prefix' => 'role', 'as' => 'role.'], function(){
    Route::get('/', [RoleController::class, 'index'])->name('index');
    Route::get('tambahrole', [RoleController::class, 'tambahrole'])->name('create');
    Route::post('tambahrole', [RoleController::class, 'storerole'])->name('store');
    Route::get('editrole/{role:id}', [RoleController::class, 'editrole'])->name('edit');
    Route::post('editrole/{role:id}', [RoleController::class, 'updaterole'])->name('update');
    Route::delete('/{role:id}', [RoleController::class, 'delete'])->name('delete');
});

Route::group(['prefix' => 'permission', 'as' => 'permission.'], function(){
    Route::get('/', [RoleController::class, 'index'])->name('index');
    Route::get('tambahpermission', [RoleController::class, 'tambahpermission'])->name('create');
    Route::post('tambahpermission', [RoleController::class, 'storepermission'])->name('store');
    Route::get('editpermission/{permission:id}', [RoleController::class, 'editpermission'])->name('edit');
    Route::post('editpermission/{permission:id}', [RoleController::class, 'updatepermission'])->name('update');
    Route::delete('/{permission:id}', [RoleController::class, 'deletepermission'])->name('delete');
});
