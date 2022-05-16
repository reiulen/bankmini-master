<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\File;


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
        $hasil_rupiah =  number_format($angka, 0,'','.') . ',-';
        return $hasil_rupiah;
    }

}

if(!function_exists('tgl')){
    function tgl($tanggal){
        return Carbon\Carbon::parse($tanggal)->isoFormat('D/MM/Y');
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
        switch($level){
            case 'Operator':
                return 'badge-success';
                break;
            case 'Admin Bank':
                return 'badge-info';
                break;
            case 'Komite':
                return 'badge-secondary';
                break;
            case 'Kepala Sekolah':
                return 'badge-dark';
                break;
            case 'Kepala Bank':
                return 'badge-danger';
                break;
            default:
                return 'badge-warning';
                break;
        }
    }
}

function penyebut($nilai) {
	$nilai = abs($nilai);
	$huruf = array("", "satu", "dua", "tiga", "empat", "lima", "enam", "tujuh", "delapan", "sembilan", "sepuluh", "sebelas");
	$temp = "";
	if ($nilai < 12) {
		$temp = " ". $huruf[$nilai];
	} else if ($nilai <20) {
		$temp = penyebut($nilai - 10). " belas";
	} else if ($nilai < 100) {
		$temp = penyebut($nilai/10)." puluh". penyebut($nilai % 10);
	} else if ($nilai < 200) {
		$temp = " seratus" . penyebut($nilai - 100);
	} else if ($nilai < 1000) {
		$temp = penyebut($nilai/100) . " ratus" . penyebut($nilai % 100);
	} else if ($nilai < 2000) {
		$temp = " seribu" . penyebut($nilai - 1000);
	} else if ($nilai < 1000000) {
		$temp = penyebut($nilai/1000) . " ribu" . penyebut($nilai % 1000);
	} else if ($nilai < 1000000000) {
		$temp = penyebut($nilai/1000000) . " juta" . penyebut($nilai % 1000000);
	} else if ($nilai < 1000000000000) {
		$temp = penyebut($nilai/1000000000) . " milyar" . penyebut(fmod($nilai,1000000000));
	} else if ($nilai < 1000000000000000) {
		$temp = penyebut($nilai/1000000000000) . " trilyun" . penyebut(fmod($nilai,1000000000000));
	}
	return $temp;
}

function terbilang($nilai) {
	if($nilai<0) {
		$hasil = "minus ". trim(penyebut($nilai));
	} else {
		$hasil = trim(penyebut($nilai));
	}
	return $hasil;
}

if(!function_exists('upload_image')){
    function upload_image($file, $path, $name){
        if(!File::isDirectory($path)){
            File::makeDirectory($path, 0755, true);
        }
        $image = Image::make($file);
        $image->save($path . $name);
        return $path . $name;
    }
}

if(!function_exists('upload_file_base64')){
    function upload_file_base64($file, $path){
        if (!File::isDirectory($path)) {
            File::makeDirectory($path, 0755, true, true);
        }
        $image_parts = explode(";base64,", $file);
        $image_type_aux = explode("image/", $image_parts[0]);
        $image_type = $image_type_aux[1];
        $image_base64 = base64_decode($image_parts[1]);
        $ttd = $path . uniqid() . '.' . $image_type;
        file_put_contents($ttd, $image_base64);
        return $ttd;
    }
}
