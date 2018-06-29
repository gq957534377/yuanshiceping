<!DOCTYPE html>
<html lang = "{{ app()->getLocale() }}">
<head>
    <title>北京基石测评 @yield('title')</title>
    <meta name="keywords" content="高中生专业选择测评 高考专业选择测评 性格测评 兴趣测评 专业测评 职业规划 规划未来 平行志愿选择 专业意向 填报志愿 专业选择 人才适岗度 胜任能力评估 高中生规划 职涯发展 选错专业 企业用人标准 热门专业 优势与短板 职业测评 王牌专业 适合的专业 未来热门专业 什么专业好 高考专业选择 报考误区 适合的专业 文科选什么专业好 理科选什么专业好 2018年热门专业 就业前景 科学选专业 报考专业 好专业 专业前景 ">
    <meta name="description" content="" />
    <meta charset = "utf-8">
    <link rel="icon" href="{{asset('favicon.ico')}}" type="image/x-icon" />
    <!--width - 可视区域的宽度，值可为数字或关键词device-width -->
    <!--height - viewport的高度-->
    <!--initial-scale - 初始的缩放比例-->
    <!--minimum-scale - 允许用户缩放到的最小比例-->
    <!--maximum-scale - 允许用户缩放到的最大比例-->
    <!--user-scalable - 用户是否可以手动缩放-->
    <meta name = "viewport" content = "width = device-width, initial-scale = 1.0, maximum-scale = 1.0, user-scalable = 0" />
    <!--content="telephone=yes" 在iPhone 手机上默认值是（电话号码显示为拨号的超链接）：-->
    <!--可将telephone=no，则手机号码不被显示为拨号链接-->
    <!--使设备浏览网页时对数字不启用电话功能（不同设备解释不同，itouch点击数字为存入联系人，iphone为拨打电话），忽略将页面中的数字识别为电话号码。-->
    <meta name="format-detection" content="telephone=no" />
    <!--忽略识别邮箱-->
    <meta name="format-detection" content="email=no" />
    <!--网站开启对 web app 程序的支持-->
    <meta name="apple-mobile-web-app-capable" content="yes">
    <!--在 web app 应用下状态条（屏幕顶部条）的颜色；(改变顶部状态条的颜色)-->
    <!--默认值为 default（白色），可以定为 black（黑色）和 black-translucent（灰色半透明）；-->
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <!--http-equiv="Content-Type" 表示描述文档类型-->
    <!--HTTP-EQUIV类似于HTTP的头部协议，它回应给浏览器一些有用的信息，以帮助正确和精确地显示网页内容-->
    <meta http-equiv="Content-Type" content="text/html">

    <link rel="stylesheet" href="{{asset('css/swiper.min.css')}}">

    <script src="{{asset('js/jquery-1.11.3.min.js')}}"></script>
    <script src="{{asset('js/swiper.min.js')}}"></script>
    {{--    <script src="{{asset('js/swiper.js')}}"></script>--}}
    {{--    <script src="{{asset('js/swiper.esm.bundle.js')}}"></script>--}}
    <style>
        .clearfix:after {
            content: "";
            height: 0;
            visibility: hidden;
            display: block;
            clear: both;
        }
        .product-nav{
            float: left;
            width: 48.3%;
        }
        .product-nav:nth-child(odd){
            padding-right: 10px;
        }
    </style>
    @yield('style')
    <script type="text/javascript" charset="utf-8" async src="http://lxbjs.baidu.com/lxb.js?sid=12157630"></script>
    <script>
        // 百度统计
        var _hmt = _hmt || [];
        (function() {
            var hm = document.createElement("script");
            hm.src = "https://hm.baidu.com/hm.js?e44d0e63c75f995fbb88e059f8cad49f";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
        //360统计
        (function (b, a, e, h, f, c, g, s) {
            b[h] = b[h] || function () {
                (b[h].c = b[h].c || []).push(arguments)
            }
            b[h].s = !!c
            g = a.getElementsByTagName(e)[0]
            s = a.createElement(e)
            s.src = `//s.union.360.cn/${f}.js`
            s.defer = !0
            s.async = !0
            g.parentNode.insertBefore(s, g)
        })(window, document, 'script', '_qha', 263959, false)
    </script>
</head>
<body>
<div class="">
    <div><img src="{{asset('mobile/header.png')}}" width="100%"/></div>
    @yield('content')
    <div><img src="{{asset('mobile/banner6.png')}}"  width="100%"/></div>
</div>
@yield('script')
</body>
</html>