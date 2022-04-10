@extends('front.master.master')

@section('title')
{{ $shop_info->shop_name }} | Signup
@endsection

@section('meta')
    <!-- Twitter Card  -->
    <meta name="twitter:card" content="summary">
    <meta name="twitter:site" content="@my_twitter">
    <meta name="twitter:creator" content="@my_twitter">

    <!-- Open Graph  -->
    <meta property="og:title" content="{{ $seo_info->title }}" />
    <meta property="og:type" content="Ecommerce Site" />
    <meta property="og:url" content="{{ url('register') }}" />
    <meta property="og:image" content="{{ url('images/setting/seo/'.$seo_info->meta_image) }}" />
    <meta property="og:description" content="{{ $seo_info->description }}" />

@endsection
@section('content')
<section class="signup-form">
    <div class="bg-overlay pt50 pb50">
        <div class="container">
            <div class="container">


                <div class="row mt50">
                    <div class="col-lg-12 col-sm-12">
                        <div class="alert alert-danger" id="error" style="display: none;"></div>
                        <div class="alert alert-success" id="sentSuccess" style="display: none;"></div>
                        <div class="alert alert-success" id="successRegsiter" style="display: none;"></div>
                        <div class="form bg-white bg-shadow">
                            <div class="heading text-center clearfix">
                                <h4 class="pt10 color-dark login-headline">Sign Up</h4>
                                <small class="heading heading-solid center-block heading-width-100 border-light"></small>
                            </div>
                            <div class="p30" id="phoneSection">
                                <form method="post" action="{{ route('register') }}" id="#">
                                    @csrf
                                    <div class="form-group ">
                                        <input
                                        class="sign-up-input form-control @error('name') is-invalid @enderror"
                                         name="name"
                                        id="name"
                                          value="{{ old('name') }}"
                                          required autocomplete="name"
                                          placeholder="Name"
                                           autofocus type="text">
                                        @error('name')
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                        @enderror
                                        <p class="ptsan-regular"></p>
                                    </div>
{{--                                    <div class="form-group">--}}
{{--                                        <input class="sign-up-input form-control @error('email') is-invalid @enderror"--}}
{{--                                         name="email"--}}
{{--                                               id="email"--}}
{{--                                          type="text"--}}
{{--                                           placeholder="Email"--}}
{{--                                            value="{{ old('email') }}" required autocomplete="email">--}}
{{--                                        @error('email')--}}
{{--                                            <span class="invalid-feedback" role="alert">--}}
{{--                                                <strong>{{ $message }}</strong>--}}
{{--                                            </span>--}}
{{--                                        @enderror--}}
{{--                                        <p class="ptsan-regular"></p>--}}
{{--                                    </div>--}}
                                    <div class="form-group">
                                        <div class="form-group">
                                            <input type="text"
                                                   id="number"
                                                   name="phone"
                                                   class="sign-up-input form-control @error('phone') is-invalid @enderror"
                                                   required
                                                   placeholder="+88********">
                                            @error('phone')
                                                <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                            @enderror
                                        </div>
                                        <div id="recaptcha-container"></div>
                                    </div>

{{--                                    <div class="form-group">--}}
{{--                                        <input--}}
{{--                                        class="sign-up-input form-control @error('password') is-invalid @enderror"--}}
{{--                                        name="password" id="password" type="password"--}}
{{--                                        placeholder="Password"required autocomplete="new-password">--}}
{{--                                        @error('password')--}}
{{--                                            <span class="invalid-feedback" role="alert">--}}
{{--                                                <strong>{{ $message }}</strong>--}}
{{--                                            </span>--}}
{{--                                        @enderror--}}
{{--                                        <p class="ptsan-regular"></p>--}}
{{--                                    </div>--}}

{{--                                    <div class="form-group">--}}

{{--                                        <input id="password-confirm"--}}
{{--                                         type="password"--}}
{{--                                         class="sign-up-input form-control"--}}
{{--                                         placeholder="Confirm Password"--}}
{{--                                          name="password_confirmation" required autocomplete="new-password">--}}
{{--                                        <p class="ptsan-regular"></p>--}}
{{--                                    </div>--}}

                                    <button type="submit"
                                    class="button button-md bg-dark2 color-white theme-background"
                                    style="width: 100%" {{--id="signUpButton"--}}>Sign Up</button>

                                </form>
                                <div class="mt20 clearfix  text-center">
                                    <h5 class="mt20">Already have a account? <strong>
                                            <a href="{{ route('login') }}" class="te-und-ho">Login</a>
                                        </strong></h5>
                                </div>
                                <div class="register-social text-center mt20">
                                    <p class="ml-social login-with-social" >Login with Social Media</p>
                                        @foreach($social_provider as $value)
                                            <a href="{{ url('login/'.$value->provider) }}"
                                             class="button button-sm
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
                                    <button type="button" onclick="codeverify();" class="button button-md bg-dark2 color-white mb20 theme-background" style="width: 100%">{{ __('Login') }}</button>
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
    </div>
</section>
@endsection

@push('script')
<script src="{{ asset('public/js/front.js') }}"></script>
@endpush
