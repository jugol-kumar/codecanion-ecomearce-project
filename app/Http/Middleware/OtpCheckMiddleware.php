<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class OtpCheckMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {
        if (session()->has('phone-number')){
            if (Auth::check() && Auth::user()->code != null && Auth::user()->login_active == 0){
                return redirect()->route('otp.form', session('phone-number'));
            }else{
                return $next($request);
//                Session::flash('error', "please login or registration First");
//                return redirect('/');
            }
        }else{
            Session::flash('error', "please login or registration First");
            return redirect()->route('login');
        }

    }
}
