<footer>
    <div class="container pl-0 pb50 mb20">
        <div class="row main_footer_area">
            <div class="col-lg-8 col-md-12 footer_border_right">
                <div class="footer_top">
                    <div class="logo">
                        <a href="{{ url('/') }}"><img src="{{ asset('images/logo/'.$shop_info->logo_footer) }}" alt="logo" class="img-fluid"></a>
                        <p class="footer_about">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam animi aperiam architecto dignissimos distinctio eius enim expedita labore molestias neque nesciunt nobis numquam odio perspiciatis quis repudiandae rerum sequi, soluta!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam animi aperiam architecto dignissimos distinctio eius enim expedita labore molestias neque nesciunt nobis numquam odio perspiciatis quis repudiandae rerum sequi, soluta!</p>
                    </div>
                </div>
                <div class="footer_bottom">
                    <div class="row footer_bottom_row">
                        <div class="col-lg-3 col-sm-6 xs-mb30 mr40 sm-margin-right">
                            <div class="footer-menu">
                                <h4>Individual user</h4>
                                <ul>
                                    @auth
                                        <li><a href="{{ route('user.profile') }}"> Profile</a></li>
                                        <li><a href="{{ route('user.order') }}"> My Order</a></li>
                                        <li><a href="{{ route('user.logout') }}"> Logout</a></li>
                                    @endauth
                                    @guest
                                        <li><a href="{{ route('login') }}"> Sign in</a></li>
                                        <li><a href="{{ route('register') }}"> Sign up</a></li>
                                    @endguest
                                    <li><a href="{{ route('order.track') }}"> Track Your Order</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-3 col-sm-6 xs-mb30 mr40 sm-margin-right">
                            <div class="footer-menu">
                                <h4>Individual user</h4>
                                <ul>
                                    @auth
                                        <li><a href="{{ route('user.profile') }}">Profile</a></li>
                                        <li><a href="{{ route('user.order') }}">My Order</a></li>
                                        <li><a href="{{ route('user.logout') }}">Logout</a></li>
                                    @endauth
                                    @guest
                                        <li><a href="{{ route('login') }}">Sign in</a></li>
                                        <li><a href="{{ route('register') }}">Sign up</a></li>
                                    @endguest
                                    <li><a href="{{ route('order.track') }}">Track Your Order</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-3 col-sm-6 xs-mb30 mr40 sm-margin-right">
                            <div class="footer-menu contact-info">
                                <h4>For Business</h4>
                                <ul>
                                    <li class="telephone"><a href="#">Corporate</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-12">
                <div class="app_icon">
                    <img src="https://chaldn.com/asset/Egg.Grocery.Fabric/Egg.Grocery.Web/1.5.0+DataCenter-Release-2996/Default/components/shared/NewFooter/images/google_play_store.png?q=low&webp=1&alpha=1" alt="">
                    <img src="https://chaldn.com/asset/Egg.Grocery.Fabric/Egg.Grocery.Web/1.5.0+DataCenter-Release-2996/Default/components/shared/NewFooter/images/app_store.png?q=low&webp=1&alpha=1" alt="">
                </div>
                <div class="number_or_mail">
                    <p><i class="lni lni-phone"></i> +88017555555</p>
                    <p>
                        <span>or email </span>
                        <strong>groco@ctpbd.com</strong></p>
                </div>
                <div class="socal_icon">
                    <ul>
                        <li><img src="https://chaldn.com/asset/Egg.Grocery.Fabric/Egg.Grocery.Web/1.5.0+DataCenter-Release-2996/Default/components/shared/NewFooter/images/Facebook.png?q=low&webp=1&alpha=1" alt=""></li>
                        <li><img src="https://chaldn.com/asset/Egg.Grocery.Fabric/Egg.Grocery.Web/1.5.0+DataCenter-Release-2996/Default/components/shared/NewFooter/images/Youtube.png?q=low&webp=1&alpha=1" alt=""></li>
                        <li><img src="https://chaldn.com/asset/Egg.Grocery.Fabric/Egg.Grocery.Web/1.5.0+DataCenter-Release-2996/Default/components/shared/NewFooter/images/twitter.png?q=low&webp=1&alpha=1" alt=""></li>
                        <li><img src="https://chaldn.com/asset/Egg.Grocery.Fabric/Egg.Grocery.Web/1.5.0+DataCenter-Release-2996/Default/components/shared/NewFooter/images/Instagram.png?q=low&webp=1&alpha=1" alt=""></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</footer>

{{--<div class="row footer-primary clearfix   mb20 ">--}}
{{--    <div class="col-lg-3 col-sm-6 xs-mb30">--}}
{{--        <div class="logo">--}}
{{--            <a href="{{ url('/') }}"><img src="{{ asset('images/logo/'.$shop_info->logo_footer) }}" alt="logo" class="img-fluid"></a>--}}
{{--        </div>--}}
{{--    </div>--}}
{{--    <div class="col-lg-3 col-sm-6 xs-mb30">--}}
{{--        <div class="footer-menu">--}}
{{--            <h4>Quick Links</h4>--}}
{{--            <ul>--}}
{{--                <!-- it's coming from hlpers  in app/helpers/helpers -->--}}
{{--                @if(count(allPages()) > 0)--}}
{{--                    @foreach(allPages() as $value)--}}
{{--                        <li><a href="{{ url('page',str_replace(' ','-',$value->title))}}"><i class='lni lni-chevron-right'></i> {{ $value->title }}</a></li>--}}
{{--                    @endforeach--}}
{{--                @endif--}}
{{--            </ul>--}}
{{--        </div>--}}
{{--    </div>--}}
{{--    <div class="col-lg-3 col-sm-6 xs-mb30">--}}
{{--        <div class="footer-menu">--}}
{{--            <h4>Individual user</h4>--}}
{{--            <ul>--}}
{{--                @auth--}}
{{--                    <li><a href="{{ route('user.profile') }}"><i class='lni lni-chevron-right'></i> Profile</a></li>--}}
{{--                    <li><a href="{{ route('user.order') }}"><i class='lni lni-chevron-right'></i> My Order</a></li>--}}
{{--                    <li><a href="{{ route('user.logout') }}"><i class='lni lni-chevron-right'></i> Logout</a></li>--}}
{{--                @endauth--}}
{{--                @guest--}}
{{--                    <li><a href="{{ route('login') }}"><i class='lni lni-chevron-right'></i> Sign in</a></li>--}}
{{--                    <li><a href="{{ route('register') }}"><i class='lni lni-chevron-right'></i> Sign up</a></li>--}}
{{--                @endguest--}}
{{--                <li><a href="{{ route('order.track') }}"><i class='lni lni-chevron-right'></i> Track Your Order</a></li>--}}
{{--            </ul>--}}
{{--        </div>--}}
{{--    </div>--}}
{{--    <div class="col-lg-3 col-sm-6 xs-mb30">--}}
{{--        <div class="footer-menu contact-info">--}}
{{--            <h4>Contact Us</h4>--}}
{{--            <ul>--}}
{{--                <li class="telephone"> <i class='lni lni-mobile'></i> {{ $shop_info->phone }}--}}
{{--                <li class="address"> <i class="lni lni-direction"></i> {{ $shop_info->address }}</li>--}}
{{--            </ul>--}}
{{--        </div>--}}
{{--    </div>--}}
{{--</div>--}}
