<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Model\Setting\SocialCreadential;
use App\Providers\RouteServiceProvider;
use Illuminate\Http\Request;
use App\User;
use Auth, File, Session;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Socialite;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
     */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }

    public function redirectToProvider($provider)
    {
        return Socialite::driver($provider)->redirect();
    }

    public function showLoginForm()
    {
        $social_provider = SocialCreadential::select('id', 'provider')
                           ->where('status', '=', 1)
                           ->get();
        return view('auth.sent_otp_form', ['social_provider' => $social_provider, "phone" => null]);
//        return view('auth.login',['social_provider' => $social_provider]);
    }


    public function authenticated(Request $request, $user)
    {
        return redirect()->intended('profile');
    }

    public function handleProviderCallback($provider)
    {
        try {
            $userSocial = Socialite::driver($provider)->stateless()->user();
            $user = User::where('email', $userSocial->getEmail())->first();
            if ($user) {
                Auth::login($user);
                return redirect()->intended('profile');
            } else {
                $user = User::create([
                    'name' => $userSocial->getName(),
                    'email' => $userSocial->getEmail(),
                ]);
                Auth::login($user);
                return redirect()->intended('profile');
            }
        } catch (\Exception $e) {
            Session::flash('error','Something went wrong!');
            return redirect()->back();
        }
    }

    protected function credentials(Request $request)
    {
        return $request->only("number");
    }

    public function login(Request $request)
    {
        $request->validate([
            'number' => 'required|min:11'
        ]);

        if (!session('phone-number')){
            session(['phone-number' =>$request->number]);
        }

        $user = User::where("phone", $request->number)->first();
        if ($user){
            auth()->login($user);
            if ($user->phone){
                sendOtpUser($user->phone);
                return redirect(route('otp.form', session('phone-number')));
            }else{
                Session::flash("error", "Something want wrong . please try again");
                return redirect()->to('/');
            }
        }else{
            Session::flash("error", "Credentials Not Match With Our Record");
            return redirect()->to('/login');
        }
    }


}
