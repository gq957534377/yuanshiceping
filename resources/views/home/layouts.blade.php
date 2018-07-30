<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>基石测评</title>
    <link rel="icon" href="{{asset('/favicon.ico')}}" type="image/x-icon" />
    <link rel="stylesheet" href="{{asset('css/basic.css')}}" type="text/css">
    <link rel="stylesheet" href="{{asset('css/style.css')}}" type="text/css">
    <link rel="stylesheet" href="{{asset('css/swiper.min.css')}}">
    <link href="https://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    @yield('style')
</head>
<body>
<div class="js-con-con">
    <!-- head部分 -->
    <div id="header" style="width: 100%">
        @include('home.header')
    </div>
    @yield('content')
    <!-- 底部 -->
    <div id="footer" style="width: 100%">
        @include('home.footer')
    </div>
</div>
<div class="mask"></div>
<script src="{{asset('js/jquery.min.js')}}" type="text/javascript"></script>
<script src="{{asset('js/swiper/js/swiper.min.js')}}" type="text/javascript"></script>
@yield('script')
<script>
    $(function () {
        var mySwiper = new Swiper('.swiper-container', {
            loop: true,
            autoplay: 3000,
            speed: 1000,
            pagination: '.swiper-pagination',
        });
        switch (location.pathname) {
            case '/':
                $('.nav-list li:eq(0) a').addClass('active');
                break;
            case '/product':
                $('.nav-list li:eq(1) a').addClass('active');
                break;
            case '/server':
                $('.nav-list li:eq(2) a').addClass('active');
                break;
            case '/news':
                $('.nav-list li:eq(3) a').addClass('active');
                break;
            case '/about':
                $('.nav-list li:eq(4) a').addClass('active');
                break;
        };
    })
</script>
</body>
</html>
