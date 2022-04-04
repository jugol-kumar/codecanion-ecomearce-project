<!DOCTYPE html>
<html lang="en-us">

<head>
    @include('front.include.header_asset')

    @stack('style')

    <style>
        /* this style are dynamic with theme  */
        .theme-background {
            background: {{ $shop_info->theme_color }}   !important;
        }

        .theme-color {
            color: {{ $shop_info->theme_color }}   !important;
        }

        .theme-hover-bg : hover {

            background: {{ $shop_info->theme_color }}   !important;
        }

        .theme-hover-color : hover {
            color: {{ $shop_info->theme_color }}   !important;
        }

        .initially_selected .parent_a {
            color: {{ $shop_info->theme_color }} ;
        }

        .active_color > a {
            color: {{ $shop_info->theme_color }} ;
        }

        .my-radio {
            display: none;
        }
        .margin_left_250{
            margin-left: 250px !important;
        }
        .margin_left_0{
            margin-left: 0 !important;
        }



    </style>
    @if($shop_info->sidemenu_status == 0)
        <style>
            .sidebar {
                margin-left: -250px !important;
            }

            .sidebar.active {
                margin-left: 0 !important;
                transition: all ease 1s;
            }
        </style>
    @endif
<!-- google analytics  -->
    <!-- coming from app/Helpers/helper -->
    @php
        $google_analytics = googleAnalytics();
    @endphp

    @if($google_analytics && $google_analytics->status == 1)
        <script async src="https://www.googletagmanager.com/gtag/js?id={{ $google_analytics->app_id }}"></script>
        <script>
            window.dataLayer = window.dataLayer || [];

            function gtag() {
                dataLayer.push(arguments);
            }

            gtag('js', new Date());
            gtag('config', '{{ $google_analytics->app_id }}');
        </script>
@endif
<!-- google analytics  -->

{{--    conditional margin left style --}}

    @php
        if (request()->path() == "login" ||
            request()->path() =="register" ||
            request()->path() == "password/reset"){
            $isActive = true;
        }else{
            $isActive = false;
        }

    @endphp


</head>

<body id="app_body">
<div id="front-wrapper">
    <header class="header theme-background">
        {{--        "container-fluid" class change--}}
        <div class="container-fluid">
            <div class="row">
                <div class="col col-lg-1 col-sm-1 d-lg-none d-md-none">
                    <div class="left-menu-toggle">
                        <a id="sidebarCollapse" href="#" class="toggle-nav btn-nav nav-toggle-btn">
                            <i class="lni-menu"></i>
                        </a>
                    </div>
                </div>
                <div class="col col-lg-2 col-sm-2 ">
                    <div class="logo">
                        <a href="{{ url('/') }}"><img src="{{ url('images/logo/'.$shop_info->logo_header) }}" alt="logo"
                                                      class="img-fluid"></a>
                    </div>
                </div>
                <!-- for mobile  -->
                <div class="d-sm-none d-md-none d-lg-none col col-lg-3 col-sm-3 text-center">
                    <div class="user-menu">
                        <a href="#">
                            <i class="lni lni-user" style="font-size: 20px"></i>
                        </a>
                        <ul class="dropdown-menu1">
                            @auth
                                <li><a href="{{ route('user.profile') }}"><span>Profile</span></a></li>
                                <li><a href="{{ route('user.order') }}"><span>My Orders</span></a></li>
                                <li><a href="{{ route('user.logout') }}"><span>Logout</span></a></li>
                            @endauth
                            @guest
                                <li><a href="{{ route('login') }}"><span>Sign in</span></a></li>
                                <li><a href="{{ route('register') }}"><span>Sign up</span></a></li>
                            @endguest
                            <li><a href="{{ route('order.track') }}">Track Order</a></li>
                        </ul>
                    </div>
                </div>

                <!-- end mobile profile  -->
                <div class="col-12 col-lg-6 col-sm-6">
                    <search-box></search-box>
                </div>

                <div class="d-none d-sm-block col pl-0">
                    <div class="user-menu">
                        <div class="other-buttons">
                            <a href="" class="other-button-hover">
                                <div class="d-flex home-button">
                                    <svg style="fill:#615e58;stroke:#615e58;display:inline-block;vertical-align:middle;" width="20px" height="17px" fill="none" viewBox="0 0 62 60" data-reactid=".w2yjcx1yko.4.0.0.0.4.0.0.0"><path d="M61.2 29.274a2.955 2.955 0 00-.243-4.229L33.26.81c-1.257-1.1-3.272-1.077-4.503.052L.964 26.338A2.938 2.938 0 00.83 30.56l.697.726c1.156 1.203 3.024 1.346 4.17.32l2.078-1.86v27.23A3.023 3.023 0 0010.798 60h10.833a3.023 3.023 0 003.024-3.023V37.926h13.818v19.05c-.024 1.67 1.17 3.023 2.84 3.023h11.48a3.023 3.023 0 003.024-3.024V30.13s.574.502 1.281 1.124c.707.621 2.19.123 3.314-1.113l.788-.866z" data-reactid=".w2yjcx1yko.4.0.0.0.4.0.0.0.0"></path></svg>
                                    <span>Dhaka</span>
                                    <i class="lni-chevron-down"></i>
                                </div>
                            </a>
                            <a href="" class="help-button other-button-hover">
                                <svg style="fill:#615e58;stroke:#615e58;display:inline-block;vertical-align:middle;" width="20px" height="16px" fill="none" viewBox="0 0 44 60" data-reactid=".w2yjcx1yko.4.0.0.0.5.0.0"><path d="M26.63 44.999H15.378c-.5 0-.937.188-1.312.563-.376.375-.563.812-.563 1.312v11.251c0 .5.188.938.563 1.313.375.374.812.562 1.312.562h11.25c.5 0 .938-.188 1.312-.563.376-.374.564-.812.564-1.312v-11.25c0-.5-.188-.938-.564-1.313-.373-.376-.812-.563-1.312-.563zM41.396 11.32c-1.282-2.36-2.937-4.351-4.97-5.977-2.03-1.624-4.312-2.922-6.843-3.89C27.052.485 24.536 0 22.036 0c-9.5 0-16.75 4.156-21.75 12.47a1.85 1.85 0 00-.258 1.311c.078.469.32.86.727 1.172l7.687 5.86c.407.25.797.374 1.173.374.562 0 1.046-.25 1.453-.75 2.25-2.812 3.922-4.609 5.015-5.39 1.344-.907 3.031-1.36 5.063-1.36 1.906 0 3.585.5 5.039 1.5 1.453 1 2.179 2.156 2.179 3.469 0 1.468-.39 2.656-1.172 3.563-.78.905-2.094 1.78-3.938 2.624-2.437 1.094-4.672 2.79-6.702 5.086-2.032 2.297-3.047 4.743-3.047 7.336v2.11c0 .594.163 1.18.492 1.758.328.578.726.867 1.195.867h11.25c.5 0 .938-.242 1.313-.728.374-.483.562-.99.562-1.521 0-.781.43-1.83 1.289-3.14.86-1.313 1.93-2.33 3.212-3.049a95.29 95.29 0 002.858-1.664c.689-.421 1.587-1.102 2.697-2.039 1.109-.938 1.968-1.868 2.577-2.79.61-.92 1.157-2.116 1.641-3.586.485-1.468.727-3.047.727-4.734 0-2.594-.641-5.07-1.922-7.428z" data-reactid=".w2yjcx1yko.4.0.0.0.5.0.0.0"></path></svg>
                                <span>Help</span>
                            </a>
                            <span id="google_element"></span>
                        </div>
                        @guest
                            <a href="{{ route('login') }}">
                                <button class="signin-button">Sign In Here</button>
                            </a>
                        @endguest

                        @auth
                            <a href="#" class="profile-button">
                                <i class="lni lni-user" style="font-size: 20px"></i>
                            </a>
                            <ul class="dropdown-menu1">
                                <li><a href="{{ route('user.profile') }}"><span>Profile</span></a></li>
                                <li><a href="{{ route('user.logout') }}"><span>Logout</span></a></li>
                            </ul>
                        @endauth

                    </div>
                </div>
            </div>
        </div>

        @include('front.include.cart')

    </header>
    <!--    end header-->
    <div class="wrapper">
        <!-- start Sidebar  -->

    @include('front.include.left_sidebar')


{{--        {{ dd(request()->path("/login")) }}--}}
    <!-- end Sidebar  -->

        <!-- Page Content  -->
        <div id="content" class="{{ $isActive ? "margin_left_0" : " margin_left_250" }}">
            <!-- search result apear  -->
            @php
                $currency = getCurrentCurrency();
            @endphp
            <search-product :currency="{{ $currency  }}"></search-product>
            <!-- search result apear  -->
            <div class="message" style="width: 100%;/*background: #032c44;*/ display: none;">
                @foreach (['warning', 'success', 'error'] as $msg)
                    @if(Session::has($msg))
                        <p class="text-center"
                           style="padding-top: 20px; padding-bottom:20px; font-size: 22px; color: #fff;">{{ Session::get($msg) }}</p>
                    @endif
                @endforeach
            </div>


            @yield('content')

        <!--start email subscribe-->
            <section class="subscribe clearfix mt50 text-center">
                <user-subscribe></user-subscribe>
            </section>
            <!--end email subscribe-->

        <!--pay us with-->
        <div class="payment-delivery">
            <div class="row mr-0">
                <div class="col-md-6">
                    <div class="left-side-content">
                        <div class="single">
                            <img src="{{ asset('images/fast-delivery.png') }}" alt="">
                            <p>30 min delivery</p>
                        </div>
                        <div class="single">
                            <img src="{{ asset('images/pay.png') }}" alt="">
                            <p>cash on delivery</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="right-side-content">
                        <ul>
                            <li>Pay With</li>
                            <li><img src="{{ asset('images/paypal.png') }}" alt=""></li>
                            <li><img src="{{ asset('images/money.png') }}" alt=""></li>
                            <li><img src="{{ asset('images/visa.png') }}" alt=""></li>
                            <li><img src="{{ asset('images/taka.png') }}" alt=""></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!--pay us with-->






        @include('front.include.footer')
        </div>
    </div>

</div>
<!-- End Back To Top Button -->
<script>
    var base_url = "{{ url('/') }}" + '/';
</script>
<!--jquery js-->
<script src="{{ asset('assets/js/jquery-3.4.1.js') }}"></script>
<!--boostrap js-->
<script src="{{ asset('assets/js/bootstrap.min.js') }}"></script>
<!--popper js-->
<script src="{{ asset('assets/js/popper.js') }}"></script>
<!--swiper js-->
<script src="{{ asset('assets/js/jquery.elevatezoom.js') }}"></script>
<!--magnific js-->
<script src="{{ asset('assets/js/magnific.js') }}"></script>
<!--main js-->
<script src="{{ asset('assets/js/main.js') }}"></script>
{{--firebase js--}}
@stack('script')

<script src="https://www.gstatic.com/firebasejs/6.0.2/firebase.js"></script>
<script src="{{ asset('assets/js/jquery-3.4.1.js') }}"></script>

<script type="text/javascript">
    $(document).ready(function ($) {
        @foreach (['warning', 'success', 'error'] as $msg)
        @if(Session::has($msg))
        @switch($msg)
        @case('warning')
        $('.message').addClass('bg-warning');
        @break;
        @case('error')
        $('.message').addClass('bg-danger');
        @break;
        @default
        $('.message').addClass('bg-success');
        @endswitch
        $('.message').slideDown("slow").delay(4500).slideUp("slow");
        @endif
        @endforeach

        // $('.sidebar').addClass('active');

    })
</script>
<!-- coming from app/helpers/helper  -->
@php
    $facebook_chat = facebookChat();
@endphp

@if($facebook_chat && $facebook_chat->status == 1)
    <div class="fb-customerchat"
         page_id="{{ $facebook_chat->app_id }}"
         minimized="true"
         theme_color="{{ $shop_info->theme_color }}"
    >
    </div>
{{--    <script>--}}
{{--        window.fbAsyncInit = function () {--}}
{{--            FB.init({--}}
{{--                appId: '173637076534990',--}}
{{--                autoLogAppEvents: true,--}}
{{--                xfbml: true,--}}
{{--                version: 'v2.11'--}}
{{--            });--}}
{{--        };--}}
{{--        (function (d, s, id) {--}}
{{--            var js, fjs = d.getElementsByTagName(s)[0];--}}
{{--            if (d.getElementById(id)) {--}}
{{--                return;--}}
{{--            }--}}
{{--            js = d.createElement(s);--}}
{{--            js.id = id;--}}
{{--            js.src = "https://connect.facebook.net/he_EN/sdk/xfbml.customerchat.js";--}}
{{--            fjs.parentNode.insertBefore(js, fjs);--}}
{{--        }(document, 'script', 'facebook-jssdk'));--}}
{{--    </script>--}}
@endif

<script type="text/javascript">
    // Initialize the service worker
    // if ('serviceWorker' in navigator) {
    //     navigator.serviceWorker.register('/serviceworker.js', {
    //         scope: '.'
    //     }).then(function (registration) {
    //         // Registration was successful
    //         // console.log('Laravel PWA: ServiceWorker registration successful with scope: ', registration.scope);
    //     }, function (err) {
    //         // registration failed :(
    //         // console.log('Laravel PWA: ServiceWorker registration failed: ', err);
    //     });
    // }
</script>


<script>
    const firebaseConfig = {
        apiKey              : "AIzaSyCp0mqhw22lDlehJcVCl9UN-I_3xVVfWHM",
        authDomain          : "ecomb1.firebaseapp.com",
        projectId           : "ecomb1",
        storageBucket       : "ecomb1.appspot.com",
        messagingSenderId   : "777578552114",
        appId               : "1:777578552114:web:ab28772d0e24982c44d52b",
        measurementId       : "G-H4KDQZ5R8H"
    };
    firebase.initializeApp(firebaseConfig);
</script>

<script>

    window.onload=function () {
        render();
    };

    function render() {
        window.recaptchaVerifier=new firebase.auth.RecaptchaVerifier('recaptcha-container',  {
            'size': 'invisible',
                'callback': function (response) {
                    // reCAPTCHA solved, allow signInWithPhoneNumber.
                    console.log('recaptcha resolved');
                    console.log(response);
                }
            });
        recaptchaVerifier.render();
    }



    $("#signUpButton").on("click", function (){
        event.preventDefault();

        let name = $("#name").val();
        let email = $("#email").val();
        let phone  = $("#number").val();
        let password = $("#password").val();
        let cPassword = $("#password-confirm").val();

        if (name == ""){
            $('#error').text('Somthing Want Wrong')
            $("#name").addClass('is-invalid');
            $("#error").show();
        }
        if (email == ""){
            $('#error').text('Somthing Want Wrong')
            $("#email").addClass('is-invalid');
            $("#error").show();
        }
        if (phone == ""){
            $('#error').text('Somthing Want Wrong')
            $("#number").addClass('is-invalid');
            $("#error").show();
        }
        if (password == ""){
            $('#error').text('Somthing Want Wrong')
            $("#password").addClass('is-invalid');
            $("#error").show();
        }
        if (cPassword == "" || cPassword != password){
            $('#error').text('Somthing Want Wrong')
            $("#password-confirm").addClass('is-invalid');
            $("#error").show();
        }
        phoneSendAuth();

    })
    //
    function phoneSendAuth(e) {
        var number = $("#number").val();
        firebase.auth().signInWithPhoneNumber(number,window.recaptchaVerifier)
            .then(function (confirmationResult) {
            window.confirmationResult=confirmationResult;
            coderesult=confirmationResult;

            // console.log(coderesult);

            $("#error").hide();
            $("#sentSuccess").text("Message Sent Successfully.");
            $("#sentSuccess").show();

            $("#number").val(coderesult.phone_number);
            $("#phoneSection").addClass("d-none");
            $("#codeSection").removeClass('d-none');

            var seconds=60;
            var timer;
            function myFunction() {
                if(seconds < 60) { // I want it to say 1:00, not 60
                    document.getElementById("seeTime").innerHTML = seconds;
                }
                if (seconds >0 ) { // so it doesn't go to -1
                    seconds--;
                } else {
                    clearInterval(timer);
                }
            }

            myFunction();
            timer = window.setInterval(function (){
                $("#sendAgain").attr("disabled", true);
            }, 1000);
            $("#sendAgain").attr("disabled", false);


        })
            .catch(function (error) {
            $("#successRegsiter").hide();
            $("#error").text(error.message);
            $("#error").show();
        });
    }
    //

    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    function sendAjaxRequest(name, email, password, phone){
        $.ajax({
            url: "{{ route('register') }}",
            method: "POST",
            data:{name:name, email:email, password:password,password_confirmation:password, phone:phone},
            dataType: "JSON",
            success: function (data){
                window.location.href = "/test";
            },
            error:function (response){
                $("#successRegsiter").hide();
                $("#sentSuccess").hide();

                $("#phoneSection").removeClass('d-none');
                $("#codeSection").addClass("d-none");


                $("#error").text(response.responseJSON.message);
                $("#error").show();
                console.log(response.responseJSON);

                $.each(response.responseJSON.errors,function(field_name,error){
                    $(document).find('[name='+field_name+']').after('<span class="text-strong text-danger">' +error+ '</span>')
                });
            }
        });
    }




    function validatoinAjaxData(name, email, password, phone){
        $.ajax({
            url: "{{ route('register') }}",
            method: "POST",
            data:{name:name, email:email, password:password,password_confirmation:password, phone:phone},
            dataType: "JSON",
            success: function (data){

            },
            error:function (response){
                $.each(response.responseJSON.errors,function(field_name,error){
                    $(document).find('[name='+field_name+']').after('<span class="text-strong text-danger">' +error+ '</span>')
                });
            }
        });
    }

    function codeverify() {
        var code = $("#verificationCode").val();

        coderesult.confirm(code).then(function (result) {
            var user=result.user;


            $("#error").hide();
            $("#successRegsiter").text("you are register Successfully.");
            $("#successRegsiter").show();

            let name = $("#name").val();
            let email = $("#email").val();
            let phone  = user.pc.phoneNumber;
            let password = $("#password").val();
            let cPassword = $("#password-confirm").val();

            sendAjaxRequest(name, email, password, phone);



            console.log("call code verify method success");


        }).catch(function (error) {

            $("#error").text(error.message);
            $("#error").show();
            $("#successRegsiter").hide();


            console.log("call code verify method error")
        });
    }
</script>


<script src="https://translate.google.com/translate_a/element.js?cb=loadGoogleTranslate"></script>
<script>
    function loadGoogleTranslate(){
        new google.translate.TranslateElement("google_element")
    }
</script>







</body>

</html>
