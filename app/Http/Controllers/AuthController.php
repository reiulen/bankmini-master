<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Siswa;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    public function index()
    {
        return view('login');
    }

    public function login(Request $request)
    {
        if($request->siswa){
            $message = [
                'required' => 'Tidak boleh kosong!',
                'max' => 'Tidak valid!',
                'min' => 'Tidak valid!'
            ];
            $request->validate([
                'nis' => 'required|max:9|min:9',
            ], $message);

            $siswa = Siswa::firstWhere(['nis' => $request->nis, 'tgl_lahir' => $request->tgl_lahir]);
            if($siswa){
                Auth::guard('siswa')->login($siswa);
                return redirect('dashboard');
            }
            return back()->with([
                'pesan' => 'NIS/Tanggal Lahir tidak ditemukan',
                'type' => 'siswa',
            ]);
        }elseif($request->pengelola){
            if(Auth::attempt(['email' => $request->email, 'password' => $request->password])){
                $user = User::firstWhere('email', $request->email);
                $remember = $request->remember ? true : false;
                Auth::login($user, $remember);
                return redirect()->intended(route('dashboard'));
            }
            return back()->with(['pesan'=> 'email/password salah', 'type' => 'pengelola']);
        }

    }

    public function logout()
    {
        Auth::logout();
        Request()->session()->regenerateToken();
        Request()->session()->invalidate();
        return redirect(route('login.index'));
    }
}
