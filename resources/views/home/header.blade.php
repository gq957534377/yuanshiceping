<header>
    <!-- logo -->
    <div class="dd-head-js">
        <div class="lt-logo-head fl">
            <a href="{{url('/')}}" class="logo">
                <img src="{{asset('images/pc/logo.png')}}" alt="" title="基石-科学的人脸识别方式">
            </a>
        </div>
        <!-- phone -->
        <div class="dd-rt-phone fr">
            <img class="fl" src="{{asset('images/pc/phone_03.png')}}" alt="">
            <a class="hx fl"></a>
            <div class="phone-lx fr">
                <p>免费咨询热线</p>
                <p>400-8888--8888</p>
            </div>

        </div>
        <div style="clear: both"></div>
    </div>
</header>
<!-- nav导航 -->
<nav class="dd-nav-mid">
    <div class="nav-mid-con">
        <ul class="nav-list clearfix">
            <li>
                <a class="" href="{{url('/')}}">首页</a>
            </li>
            <li>
                <a href="{{url('/view/product')}}">产品</a>
            </li>
            <li>
                <a href="{{url('/view/server')}}">服务案例</a>
            </li>
            <li>
                <a href="{{url('/view/news')}}">资讯 / 活动</a>
            </li>
            <li>
                <a href="{{url('/view/about')}}">关于基石</a>
            </li>
            <li class="cp-cs">
                <a href="{{url('/view/culum')}}">
                    网络课程
                    <h5 class="fa fa-arrow-circle-o-right" style="color: #fff"></h5>
                </a>
            </li>
        </ul>
    </div>
</nav>

<!-- banner·图 -->
<div class="dd-mid-banner">
    <div class="swiper-container">
        <div class="swiper-wrapper">
            @if($data)
                @foreach($data as $item)
                <div class="swiper-slide">
                    <a href="{{$item['routes']}}"><img src="{{$item['path']}}" alt=""></a>
                </div>
                @endforeach
            @endif
        </div>
        <div class="swiper-pagination"></div>
    </div>
</div>
