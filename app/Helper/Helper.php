<?php

use Illuminate\Support\Facades\Route;

if (!function_exists('set_active')) {
    function set_active($url, $output = 'active')
    {
        if (is_array($url)) {
            foreach ($url as $u) {
                if (Route::is($u)) {
                    return $output;
                }
            }
        } else {
            if (Route::is($url)) {
                return $output;
            }
        }
    }
}

if (!function_exists('set_active_sub')) {
    function set_active_sub($url, $output = 'active-sub')
    {
        if (is_array($url)) {
            foreach ($url as $u) {
                if (Route::is($u)) {
                    return $output;
                }
            }
        } else {
            if (Route::is($url)) {
                return $output;
            }
        }
    }
}

if (!function_exists('set_menu_open')) {
    function set_menu_open($url, $output = 'menu-open')
    {
        if (is_array($url)) {
            foreach ($url as $u) {
                if (Route::is($u)) {
                    return $output;
                }
            }
        } else {
            if (Route::is($url)) {
                return $output;
            }
        }
    }
}

if(!function_exists('format_rupiah')){
    function format_rupiah($angka){
        $hasil_rupiah = "Rp. " . number_format($angka, 0,'','.');
        return $hasil_rupiah;
    }

}

if(!function_exists('tanggal')){
    function tanggal($tanggal){
        return Carbon\Carbon::parse($tanggal)->isoFormat('D MMMM Y');
    }
}

if(!function_exists('bulan')){
    function bulan($bulan){
        return Carbon\Carbon::parse($bulan)->isoFormat('MMMM Y');
    }
}

if(!function_exists('tahun')){
    function tahun($tahun){
        return Carbon\Carbon::parse($tahun)->isoFormat('Y');
    }
}

if(!function_exists('badge_level')){
    function badge_level($level){
        if($level == 'Operator'){
            return 'badge-success';
        }elseif($level == 'Admin Bank'){
            return 'badge-info';
        }elseif($level == 'Komite'){
            return 'badge-secondary';
        }elseif($level == 'Kepala Sekolah'){
            return 'badge-dark';
        }elseif($level == 'Kepala Bank'){
            return 'badge-danger';
        }else{
            return 'badge-warning';
        }
    }
}

