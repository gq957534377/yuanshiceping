<!DOCTYPE html>
<html lang = "{{ app()->getLocale() }}">
<head>
    <title>基石测评</title>
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
    <!-- UC默认竖屏 ，UC强制全屏 -->
    <meta name="full-screen" content="yes">
    <!--使用了application这种应用模式后，页面讲默认全屏，禁止长按菜单，禁止收拾，标准排版，以及强制图片显示。-->
    <!--应用模式-->
    <meta name="browsermode" content="application">
    <!-- QQ强制竖屏 QQ强制全屏 -->
    <!--设置屏幕方向-->
    <meta name="x5-orientation" content="portrait">
    <!--设置全屏-->
    <meta name="x5-fullscreen" content="true">
    <!--设置屏幕模式-->
    <meta name="x5-page-mode" content="app">
    <!-- windows phone 点击无高光 -->
    <meta name="msapplication-tap-highlight" content="no">
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
        <div><img src="{{asset('mobile/banner1.png')}}"  width="100%"/></div>
        <div><img src="{{asset('mobile/banner2.png')}}"  width="100%"/></div>
        <div><img src="{{asset('mobile/banner3.png')}}"  width="100%"/></div>
        <div><img src="{{asset('mobile/banner4.png')}}"  width="100%"/></div>
        <div class="clearfix">
            <a href="" class="product-nav"><img src="{{asset('mobile/product1.png')}}"  width="100%"/></a>
            <a href="" class="product-nav"><img src="{{asset('mobile/product2.png')}}"  width="100%"/></a>
            <a href="" class="product-nav"><img src="{{asset('mobile/product3.png')}}"  width="100%"/></a>
            <a href="" class="product-nav"><img src="{{asset('mobile/product4.png')}}"  width="100%"/></a>
        </div>
        <div><img src="{{asset('mobile/banner5.png')}}"  width="100%"/></div>
        <div><img src="{{asset('mobile/banner6.png')}}"  width="100%"/></div>
    </div>
</body>
</html>