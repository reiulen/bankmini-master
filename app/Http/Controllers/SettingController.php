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
            if (!File::isDirectory($folderPath)) {
                File::makeDirectory($folderPath, 0755, true, true);
            }
            $image_parts = explode(";base64,", $request->signed);
            $image_type_aux = explode("image/", $image_parts[0]);
            $image_type = $image_type_aux[1];
            $image_base64 = base64_decode($image_parts[1]);
            $ttd = $folderPath . uniqid() . '.' . $image_type;
            file_put_contents($ttd, $image_base64);
            File::delete($setting->tanda_tangan);
        }

        $setting->update([
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
