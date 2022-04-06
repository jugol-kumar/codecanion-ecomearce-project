@extends('front.master.master')

@section('title')
    {{ $shop_info->shop_name }} | Submit OTP
@endsection

@section('meta')
    <!-- Twitter Card  -->
    <meta name="twitter:card" content="summary">
    <meta name="twitter:site" content="@my_twitter">
    <meta name="twitter:creator" content="@my_twitter">

    <!-- Open Graph  -->
    <meta property="og:title" content="{{ $seo_info->title }}" />
    <meta property="og:type" content="Ecommerce Site" />
    <meta property="og:url" content="{{ url('login') }}" />
    <meta property="og:image" content="{{ url('images/setting/seo/'.$seo_info->meta_image) }}" />
    <meta property="og:description" content="{{ $seo_info->description }}" />

@endsection
@section('content')
    <section class="signin-form">
        <div class="bg-overlay pt50 pb50">
            <div class="container">


                <div class="row mt50">
                    <div class="col-lg-12 col-sm-12">
                        <div class="alert alert-danger" id="error" style="display: none;"></div>
                        <div class="alert alert-success" id="sentSuccess" style="display: none;"></div>
                        <div class="alert alert-success" id="successRegsiter" style="display: none;"></div>
                        <div class="form bg-white bg-shadow">
                            <div class="heading text-center clearfix">
                                <h4 class="pt10 theme-color login-headline">Sign in</h4>
                                <small class="heading heading-solid center-block heading-width-100 border-light"></small>
                            </div>
                            <div class="p30" id="phoneSection">
                                <form method="POST" action="{{ route('login') }}">
                                    @csrf
                                    <div class="form-group">
                                        <input type="text" id="number" name="number" class="sign-up-input form-control" value="+88">
                                        <p class="ptsan-regular text-danger">
                                            @error('number')
                                            {{ $message }}
                                            @enderror
                                        </p>
                                    </div>
                                    <div id="recaptcha-container"></div>
                                    <button type="submit"
                                            class="button button-md bg-dark2 color-white mb20 theme-background"
                                            style="width: 100%">{{ __('Login Here') }}</button>
                                </form>

                                <div class="account-info text-center clearfix width-res">
                                    <h5 class="color-dark">
                                        <a class="float-l te-und-ho" href="{{ route('password.request') }}">Forget
                                            Password?</a>
                                        <a href="{{ url('register') }}" class="float-r te-und-ho">Create Account</a>
                                    </h5>
                                </div>
                                <div class="register-social text-center mt20">
                                    <p class="login-with-social">Login with Social Media</p>
                                    @foreach($social_provider as $value)
                                        <a href="{{ url('login/'.$value->provider) }}"
                                           class="button ml-social button-sm
                                        @if($value->provider == 'facebook') bg-fb @endif
                                           @if($value->provider == 'google') bg-plus @endif
                                           @if($value->provider == 'twitter') bg-info @endif
                                               color-white mb10">
                                            <i class="lni lni-{{ $value->provider }}" aria-hidden="true"></i>
                                        </a>
                                    @endforeach
                                </div>
                            </div>

                            {{--  this is section for verify code section --}}
                            <div class="p30 d-none" id="codeSection">
                                <form method="POST" action="{{ route('login') }}">
                                    @csrf
                                    <div class="form-group">
                                        <input type="text" id="verificationCode" class="sign-up-input form-control" placeholder="Enter verification code">
                                    </div>
                                    <div id="recaptcha-container"></div>
                                    <button type="button" onclick="codeverify(loginReqs=true);" class="button button-md bg-dark2 color-white mb20 theme-background" style="width: 100%">{{ __('Login') }}</button>
                                </form>
                                <button type="submit" onclick="phoneSendAuth()" id="sendAgain" class="btn btn-link text-center">Din't get code ? Click here to Resend Code</button>
                                <p id="seeTime" class="float-right"></p>
                            </div>
                            {{--  this is section for verify code section --}}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection

@push('script')
    <script src="{{ asset('public/js/front.js') }}"></script>
@endpush
