<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
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

Route::group(['middleware' => 'auth'], function(){
    Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard');
    Route::get('/logout', [AuthController::class, 'logout'])->name('logout');
    include_once 'pages/jurusan.php';
    include_once 'pages/tahunakademik.php';
    include_once 'pages/danaawal.php';
    include_once 'pages/pembayaran.php';
    include_once 'pages/tabungan.php';
    include_once 'pages/kelas.php';
    include_once 'pages/kenaikan.php';
    include_once 'pages/siswa.php';
    include_once 'pages/pengguna.php';
    include_once 'pages/historytabungan.php';
     include_once 'pages/historytransaksi.php';
    include_once 'pages/laporantunggakan.php';
    include_once 'pages/laporanmasuk.php';
    include_once 'pages/role.php';
});

Route::group(['middleware' => 'guest'], function(){
    include_once 'pages/login.php';
});