<?php

namespace App\Http\Controllers;

use App\Models\Setting;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use PDF;

class SettingController extends Controller
{

    public function index()
    {
        $setting = Setting::first();
        return view('backend.setting.index', compact('setting'));
    }

    public function create()
    {
        return view('backend.setting.tambah');
    }

    public function store(Request $request)
    {
        $request->validate([
            'header' => 'required',
            'nama' => 'required',
        ]);

        $setting = Setting::first();
        if ($request->signed) {
            $folderPath = 'upload/ttd/';
            $ttd = upload_file_base64($request->signed, $folderPath);
            File::delete($setting->tanda_tangan);
        }else{
            $ttd = $setting->tanda_tangan;
        }

        if($request->file('favicon')){
            $file = $request->file('favicon');
            $folderPath = 'upload/';
            $rename = 'favicon.' . $file->getClientOriginalExtension();
            File::delete($setting->favicon);
            $favicon = upload_image($file, $folderPath, $rename);
        }else{
            $favicon = $setting->favicon;
        }

        if($request->file('logo')){
            $file = $request->file('logo');
            $folderPath = 'upload/logo/';
            $rename = 'logo.' . $file->getClientOriginalExtension();
            File::delete($setting->logo);
            $logo = upload_image($file, $folderPath, $rename);
        }else{
            $logo = $setting->logo;
        }

        if($request->file('logobrand')){
            $file = $request->file('logobrand');
            $folderPath = 'upload/logo/';
            $rename = 'logo_brand.' . $file->getClientOriginalExtension();
            File::delete($setting->logo_brand);
            $logo_brand = upload_image($file, $folderPath, $rename);
        }else{
            $logo_brand = $setting->logo_brand;
        }

        if($request->file('logoheader')){
            $file = $request->file('logoheader');
            $folderPath = 'upload/logo/';
            $rename = 'logo_header.' . $file->getClientOriginalExtension();
            File::delete($setting->logo_header);
            $logo_header = upload_image($file, $folderPath, $rename);
        }else{
            $logo_header = $setting->logo_header;
        }

        $setting->update([
            'judul_situs' => $request->judul,
            'sekolah' => $request->sekolah,
            'favicon' => $favicon,
            'logo' => $logo,
            'logo_brand' => $logo_brand,
            'logo_header' => $logo_header,
            'ybtt' => $request->ybtt,
            'header' => $request->header,
            'nama' => $request->nama,
            'tanda_tangan' => $ttd,
        ]);

        return redirect(route('setting.index'))->with([
            'pesan' => 'Data berhasil ditambahkan',
            'pesan1' => 'Setting berhasil diubah'
        ]);
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        //
    }

    public function update(Request $request, $id)
    {
        //
    }

    public function destroy($id)
    {
        //
    }

    public function preview()
    {
        return view('backend.setting.preview');
        // return PDF::loadView('backend.setting.preview')->stream();
    }
}
