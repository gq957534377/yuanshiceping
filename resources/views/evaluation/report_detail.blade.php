<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <title>测评报告</title>
    <meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1,user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <link rel="icon" href="{{ asset('/favicon.ico') }}" type="image/x-icon" />
    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="stylesheet" href="{{ asset('evaluation/css/mui.min.css') }}" />
    <link rel="stylesheet" href="{{ asset('evaluation/css/comment.css') }}" />
    <link rel="stylesheet" href="{{ asset('evaluation/css/report_major.css') }}" />

    <script type="text/javascript" src="https://res.wx.qq.com/open/js/jweixin-1.3.2.js"></script>
    <script src="{{ asset('js/nav.js?__v=20180602210142') }}"></script>
</head>
<body>
    <!--加上report_major_green类名详情页为绿色-->
    <div class="report_major @if($short == 1) report_major_green @endif">
        <ul class="report_top">
            <li><span class="iconfont icon-mingcheng2"></span><i>专业名称 :</i>{{ $detail->name }}</li>
            <li><span class="iconfont icon-daima1"></span><i>专业代码 :</i>{{ $detail->code }}</li>
            <li><span class="iconfont icon-pipei1"></span><i>匹  配 度 :</i>{{ $grade }}%</li>
            <li><span class="iconfont icon-huatongKTVmaikefengchanggexianxing"></span><i>是否艺考 :</i>{{ $detail->art==1 ? '是' : '否'}}</li>
        </ul>

        <h3><span></span>专业描述</h3>
        <p class="text_indent">{{ $detail->description }}</p>
        <h3><span></span>专业设置目的</h3>
        <p class="text_indent">{{ $detail->goal }}</p>
        <h3><span></span>主修课程</h3>
        <p class="text_indent">{{ $detail->course }}</p>
        <h3><span></span>未来就业空间</h3>
        <p class="text_indent">{{ $detail->career }}</p>
    </div>
    <script type="text/javascript" src="{{asset('evaluation/js/zepto.min.js')}}"></script>
    <script type="text/javascript" src="{{asset('evaluation/js/mui.min.js')}}"></script>
</body>
</html>