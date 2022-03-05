<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AkademikController;
use App\Http\Controllers\DashboardController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('index');
});

Route::get('/login', function () {
    return view('login');
})->name('login');

Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard');

include_once 'pages/pengguna.php';
include_once 'pages/laporanmasuk.php';
include_once 'pages/tahunakademik.php';
include_once 'pages/danaawal.php';
