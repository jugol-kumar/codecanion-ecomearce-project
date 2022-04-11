@extends('front.master.master')

@section('title')
    {{ $seo_info->title }}
@endsection

@section('meta')
    <!-- Twitter Card  -->
    <meta name="twitter:card" content="summary">
    <meta name="twitter:title" content="{{ $seo_info->title }}">
    <meta name="twitter:site" content="@shakhawat_fci">
    <meta name="twitter:creator" content="@shakhawat_fci">
    <meta name="twitter:description" content="{{ $seo_info->description }}">
    <meta name="twitter:image" content="{{ url('images/setting/seo/'.$seo_info->meta_image) }}">

    <!-- Open Graph  -->
    <meta property="og:title" content="{{ $seo_info->title }}"/>
    <meta property="og:type" content="Ecommerce Site"/>
    <meta property="og:url" content="{{ url('/') }}"/>
    <meta property="og:image" content="{{ url('images/setting/seo/'.$seo_info->meta_image) }}"/>
    <meta property="og:description" content="{{ $seo_info->description }}"/>

@endsection
@section('content')
    <!-- slider  -->
    @if($shop_info->slider_status == 1)
        @php
            $sliders = homeSlider();
        @endphp


        <div class="container-fluid">
            <div class="row">
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        @if(count($sliders) > 0)
                            @php $i = 0 @endphp
                            @foreach($sliders as $slider)
                                <li data-target="#carouselExampleIndicators" data-slide-to="{{ $i }}"
                                    class="@if($loop->first) active @endif"></li>
                                @php $i++ @endphp
                            @endforeach
                        @endif
                    </ol>
                    <div class="carousel-inner">
                        @if(count($sliders) > 0)
                            @foreach($sliders as $slider)
                                <div class="carousel-item @if($loop->first) active @endif">
                                    <a href="{{ $slider->back_link_url }}"><img class="d-block w-100"
                                                                                src="{{ url('images/slider/'.$slider->slider_image) }}"
                                                                                alt="{{ $slider->title }}"></a>
                                </div>
                        @endforeach
                    @endif

                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
        </div>
    @endif
    <!-- slider  -->

    <!--start banner-->
    <div class="container">
        <home-offers></home-offers>
    </div>
    <!--end banner-->


    @php
        $categories = frontCategory();
    @endphp
    <!-- home category from js  -->
    <div class="container">
        <div class="row category">
            <div class="col-md-12">
                <div class="title text-center">
                    <h4>Product Categories</h4>
                </div>
            </div>
        </div>
        <div class="row category home-category">
            <!-- end service 1-->
            @foreach($categories as $cat)
                <div class="col-lg-3 col-sm-4 col-6">
                    <a href="{{ route('category.product',['id' => $cat->id,'slug' => str_replace(' ','-',$cat->category_name)]) }}"
                       title="{{ $cat->category_name }}">
                        <div class="box">
                            <div class="content">
                                <img src="{{ url('images/category/icon/'.$cat->icon) }}" alt="{{ $cat->category_name }}"
                                     class="img-fluid">
                                <h3>{{ $cat->category_name }}</h3>
                            </div>
                        </div>
                    </a>
                </div>
            @endforeach
        </div>

        <!--             <div class="row" v-else>
                        <div class="col-md-12 text-center">
                            <img :src="url+'images/loading.gif'">
                        </div>
                    </div> -->

    </div>
    <!-- <home-category></home-category> -->
    <!-- home category from js  -->

    <!--  end category-->

{{--    how to order slider--}}
    @if($shop_info->how_to_order_status == 1)
    <home-order-slider></home-order-slider>
    @endif
{{--    how to order slider--}}



    <!--  start hot deal -->
    @php
        $currency = getCurrentCurrency();
    @endphp
    @if($shop_info->hot_deal_status == 1)
        <hot-deal :currency="{{ $currency }}"></hot-deal>
    @endif
    <!--  end   hot deal -->


{{--    why people chose us section--}}
    @if($shop_info->why_people_love	== 1)
    <people-love></people-love>
    @endif
{{--    why people chose us section--}}

{{--   business deal area--}}
    @if($shop_info->business_section == 1)
    <buisness-deal></buisness-deal>
    @endif
{{--   business deal area--}}

{{--   add section for mobile app--}}
    @if($shop_info->mobile_app_section == 1)
    <div class="container-fluid mt-sm-5 mt-sm-5" id="businessApp">
        <div class="row">
            <div class="col-sm-6 app-left-section">
                <p>Be a part of our family</p>
                <div class="form-section">
                    <div class="form-group">
                        <label for="">
                            <img src="https://img.icons8.com/color/48/000000/bangladesh.png"/>
                        </label>
                        <input type="text" value="88">
                        <button class="btn getapp-button">Get App</button>
                    </div>
                    <div class="app-buttons d-sm-flex">
                        <img src="{{ asset('assets/image/app1.webp') }}" alt="">
                        <img src="{{ asset('assets/image/app2.webp') }}" alt="">
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <img src="{{ asset("assets/image/appimage.png") }}" alt="">
            </div>
        </div>
    </div>
    @endif
{{--   add section for mobile app--}}


    {{--   add section for mobile app--}}


    {{--    all customer counter section--}}
    @if($shop_info->report_counter == 1)
    <div class="container-fluid" id="customerCounter">
        <div class="row">
            <div class="col-sm-6 app-left-section">
                <img src="{{ asset('images/citymap.webp') }}" alt="">
            </div>
            <div class="col-sm-6 float-right">
                <div class="counter-content">
                    <p>
                        <span>Dhaka</span>
                        Total Orders Placed
                        <span>2975407</span>
                        Total Savings
                        <span>৳252,909,595</span>
                        Time Saved
                        <span>2,231,555 hrs</span>
                    </p>
                </div>
            </div>
        </div>
    </div>
    @endif
    {{--    all customer counter section--}}







    @if($shop_info->onsale_status == 1)
        <!-- on slae  -->
        <on-sale-product :currency="{{ $currency }}"></on-sale-product>
        <!-- on slae  -->
    @endif



@endsection

@push('script')
    <script src="{{ asset('public/js/front.js') }}"></script>
@endpush
