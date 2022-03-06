<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Contracts\View\View;
use Illuminate\Http\Request;

class PenggunaController extends Controller
{
    public function index(){
        $user = User::get();
        return view('backend.pengguna.index', compact('user'));
    }

    public function create(){
        return view('backend.pengguna.tambah');
    }

    public function store(Request $request){
        
        $message = [
            'required' => 'tidak boleh kosong',
            'email' => 'harus bertipe email',
            'same' => 'password tidak sama',
        ];
        $request->validate([
            'nama' => 'required',
            'email' => 'required|email',
            'password' => 'required',
            'password2' => 'required|same:password',
            'level' => 'required',
        ], $message);

        User::create([
            'nama' => $request->nama,
            'email' => $request->email,
            'password' => $request->password,
            'level' => $request->level,
        ]);
        return redirect(route('pengguna.index'));
    }


    public function edit($id){
        $user = User::findorfail($id);
        return view('backend.pengguna.edit', compact('user'));
    }

    public function update(Request $request, $id)
    {
        $message = [
            'required' => 'tidak boleh kosong',
            'email' => 'harus bertipe email',
            'same' => 'password tidak sama',
        ];
        $request->validate([
            'nama' => 'required',
            'email' => 'required|email',
            'password' => 'required',
            'password2' => 'required|same:password',
            'level' => 'required',
        ], $message);

        $user = User::find($id);

        $user->update([
            'nama' => $request->nama,
            'email' => $request->email,
            'password' => $request->password,
            'level' => $request->level,
        ]);
        return redirect(route('pengguna.index'));
    }
    

    public function show($id){
        $user = User::find($id);
        return redirect(route('pengguna.index', compact('user')));
    }
}
