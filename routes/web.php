<?php

use App\Http\Controllers\DashboardController;
use App\Http\Controllers\SiswaController;
use Illuminate\Support\Facades\Route;

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
<<<<<<< HEAD

Route::get('/pengguna', [PenggunaController::class, 'index'])->name('pengguna');

Route::get('/kelas', [KelasController::class, 'index'])->name('kelas');

Route::get('/siswa', [SiswaController::class, 'index'])->name('siswa');

// Route::get('/siswa/pembayaran', [PembayaranController::class, 'index'])->name('pembayaran');

include_once 'pages/pengguna.php';
include_once 'pages/pembayaran.php';
include_once 'pages/tabungan.php';
include_once 'pages/kelas.php';
include_once 'pages/siswa.php';
include_once 'pages/laporanmasuk.php';
=======

include_once 'pages/pengguna.php';
include_once 'pages/laporantunggakan.php';
>>>>>>> 79069cd1dfceea29e1ab29e86f5b43ce47615191
