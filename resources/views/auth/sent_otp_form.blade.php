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
{{--                <div class="row">--}}
{{--                    <h1>Laravel Phone Number Authentication using Firebase - ItSolutionStuff.com</h1>--}}
{{--                    <div class="alert alert-danger" id="error" style="display: none;"></div>--}}
{{--                    <div class="card">--}}
{{--                        <div class="card-header">--}}
{{--                            Enter Phone Number--}}
{{--                        </div>--}}
{{--                        <div class="card-body">--}}
{{--                            <div class="alert alert-success" id="sentSuccess" style="display: none;"></div>--}}
{{--                            <form>--}}
{{--                                <label>Phone Number:</label>--}}
{{--                                <input type="text" id="number" class="form-control" placeholder="+91********">--}}
{{--                                <div id="recaptcha-container"></div>--}}
{{--                                <button type="button" class="btn btn-success" onclick="phoneSendAuth();">SendCode</button>--}}
{{--                            </form>--}}
{{--                        </div>--}}
{{--                    </div>--}}

{{--                    <div class="card" style="margin-top: 10px">--}}
{{--                        <div class="card-header">--}}
{{--                            Enter Verification code--}}
{{--                        </div>--}}
{{--                        <div class="card-body">--}}
{{--                            <div class="alert alert-success" id="successRegsiter" style="display: none;"></div>--}}
{{--                            <form>--}}
{{--                                <input type="text" id="verificationCode" class="form-control" placeholder="Enter verification code">--}}
{{--                                <button type="button" class="btn btn-success" onclick="codeverify();">Verify code</button>--}}
{{--                            </form>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                </div>--}}


                <div class="alert alert-danger" id="error" style="display: none;"></div>
                <div class="alert alert-success" id="sentSuccess" style="display: none;"></div>
                <div class="alert alert-success" id="successRegsiter" style="display: none;"></div>


                <div class="row">
                    <div class="col-lg-12 col-sm-12">
                        <div class="form bg-white bg-shadow">
                            <div class="heading text-center clearfix">
                                <h4 class="pt10 theme-color login-headline">Sign in</h4>
                                <small class="heading heading-solid center-block heading-width-100 border-light"></small>
                            </div>
                            <div class="p30" id="phoneSection">
                                <form method="POST" action="{{ route('login') }}">
                                    @csrf
                                    <div class="form-group">
                                        <input type="text" id="number" class="sign-up-input form-control" placeholder="+91********">
                                    </div>
                                    <div id="recaptcha-container"></div>
                                    <button type="button" onclick="phoneSendAuth();"class="button button-md bg-dark2 color-white mb20 theme-background" style="width: 100%">{{ __('Login') }}</button>
                                </form>
                            </div>



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
