@extends('home.mobile.layouts')
@section('content')
<div class="swiper-container">
    <div class="swiper-wrapper">
        <div class="swiper-slide"><img src="{{asset('mobile/banner1.png')}}"  width="100%"/></div>
        <div class="swiper-slide"><img src="{{asset('mobile/banner-2.png')}}"  width="100%"/></div>
        <div class="swiper-slide"><img src="{{asset('mobile/banner-3.png')}}"  width="100%"/></div>
    </div>
</div>
<div><img src="{{asset('mobile/banner2.png')}}"  width="100%"/></div>
<div><img src="{{asset('mobile/banner3.png')}}"  width="100%"/></div>
<div><img src="{{asset('mobile/banner4.png')}}"  width="100%"/></div>
<div class="clearfix">
    <a href="{{url('product/e')}}" class="product-nav"><img src="{{asset('mobile/product1.png')}}"  width="100%"/></a>
    <a href="{{url('product/c')}}" class="product-nav"><img src="{{asset('mobile/product2.png')}}"  width="100%"/></a>
    <a href="{{url('product/e-c')}}" class="product-nav"><img src="{{asset('mobile/product3.png')}}"  width="100%"/></a>
    <a href="{{url('product/e985')}}" class="product-nav"><img src="{{asset('mobile/product4.png')}}"  width="100%"/></a>
</div>
<div><img src="{{asset('mobile/banner5.png')}}"  width="100%"/></div>
@endsection
@section('script')
<script>
    $(document).ready(function () {
        var mySwiper = new Swiper ('.swiper-container',{
            autoplay: true,//可选选项，自动滑动
            loop : true,
        })
    })
</script>
@endsection