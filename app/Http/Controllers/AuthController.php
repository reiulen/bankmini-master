<?php

namespace App\Http\Controllers;

use App\Models\User;
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
        if(Auth::attempt(['email' => $request->email, 'password' => $request->password])){
            $user = User::firstWhere('email', $request->email);
            $remember = $request->remember ? true : false;
            Auth::login($user, $remember);
            return redirect()->intended(route('dashboard'));
        }
        return back()->with('pesan', 'email/password salah');
    }

    public function logout()
    {
        Auth::logout();
        Request()->session()->regenerateToken();
        Request()->session()->invalidate();
        return redirect(route('login.index'));
    }
}
