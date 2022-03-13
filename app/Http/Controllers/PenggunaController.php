<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Contracts\View\View;
use Illuminate\Support\Facades\Auth;

class PenggunaController extends Controller
{
    public function index(){
        $user = User::where('id', '!=', Auth::user()->id)->get();
        return view('backend.pengguna.index', compact('user'));
    }

    public function create(){
        return view('backend.pengguna.tambah');
    }

    public function store(Request $request){
        
        $message = [
            'required' => 'Tidak boleh kosong',
            'email' => 'Email tidak valid',
            'same' => 'Password tidak sama',
            'max' => 'Terlalu panjang',
            'min' => 'Terlalu pendek',
            'unique' => 'Sudah digunakan'
        ];
        $request->validate([
            'nama' => 'required',
            'email' => 'required|email|unique:users',
            'password' => 'required_with:password2|same:password2|max:14|min:6',
            'password2' => 'max:14|min:6',
            'level' => 'required',
        ], $message);
        User::create([
            'avatar' => 'upload/avatar/user.png',
            'nama' => $request->nama,
            'email' => $request->email,
            'password' => bcrypt($request->password),
            'level' => $request->level,
        ]);
        return redirect(route('pengguna.index'))->with([
            'pesan' => 'Data berhasil ditambahkan',
            'pesan1' => 'Data ' . $request->nama . ' berhasil ditambahkan'
        ]);
    }


    public function edit($id){
        $user = User::findorfail($id);
        return view('backend.pengguna.edit', compact('user'));
    }

    public function update(Request $request, $id)
    {
        $message = [
            'required' => 'Tidak boleh kosong',
            'email' => 'Email tidak valid',
            'same' => 'Password tidak sama',
            'max' => 'Terlalu panjang',
            'min' => 'Terlalu pendek'
        ];
        $request->validate([
            'nama' => 'required',
            'email' => 'required|email|unique:users,email,' .$id,
            'level' => 'required',
        ], $message);
        
        $user = User::find($id);

        if($request->password) { 
            $request->validate([
                'password' => 'same:password2|max:14|min:6',
                'password2' => 'max:14|min:6',
            ], $message);
            $password = $request->password;
        }else{
            $password = $user->password;
        }

        $user->update([
            'nama' => $request->nama,
            'email' => $request->email,
            'password' => bcrypt($password),
            'level' => $request->level,
        ]);
        return redirect(route('pengguna.index'))->with([
            'pesan' => 'Data berhasil diedit',
            'pesan1' => 'Data ' . $request->nama . ' berhasil diedit'
        ]);
    }

    public function delete($id)
    {
        $user = User::find($id);
        $user->delete($id);
        return back()->with([
            'pesan' => 'Data berhasil dihapus',
            'pesan1' => 'Data ' . $user->nama . ' berhasil dihapus'
        ]);
    }
    
}
