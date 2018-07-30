
@extends('home.layouts')
@section('content')
    <!-- 高考资讯&最新活动 -->
    <section class="zx-js-wl">
        <div class="js-wl-News">
            <h3 class="txt-wl-txt">网络课程</h3>
            <div class="fixclear"></div>
            <ul class="js-wl-list culum-vedio">
                <li>
                    <a href="javascrip:;" ipath="{{asset('/images/pc/video/pingxingzhiyuan.mp4')}}">
                        <div class="wl-img-js">
                            <img src="{{asset('images/pc/culum/6.jpg')}}" alt="">
                        </div>
                        <div class="wl-txt-js">
                            <p>志愿填报误区--平行志愿梯度</p>
                            <div class="mf-read-js">
                                <span>免费</span>
                                <span>1.1万次观看</span>
                            </div>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="javascrip:;" ipath="">
                        <div class="wl-img-js">
                            <img src="{{asset('images/pc/culum/1.jpg')}}" alt="">
                        </div>
                        <div class="wl-txt-js">
                            <p>分高不等于成功，分低不等于失败</p>
                            <div class="mf-read-js">
                                <span class="txt-lt">免费</span>
                                <span class="txt-rt">3万次观看</span>
                            </div>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="javascrip:;" ipath="">
                        <div class="wl-img-js">
                            <img src="{{asset('images/pc/culum/2.jpg')}}" alt="">
                        </div>
                        <div class="wl-txt-js">
                            <p>为什么找不到工作-揭秘企业用人标准</p>
                            <div class="mf-read-js">
                                <span>免费</span>
                                <span>1.5万次观看</span>
                            </div>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="javascrip:;" ipath="">
                        <div class="wl-img-js">
                            <img src="{{asset('images/pc/culum/3.jpg')}}" alt="">
                        </div>
                        <div class="wl-txt-js">
                            <p>解析专业选择的科学方式1</p>
                            <div class="mf-read-js">
                                <span>免费</span>
                                <span>1.4万次观看</span>
                            </div>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="javascrip:;" ipath="">
                        <div class="wl-img-js">
                            <img src="{{asset('images/pc/culum/4.jpg')}}" alt="">
                        </div>
                        <div class="wl-txt-js">
                            <p>解析专业选择的科学方式2</p>
                            <div class="mf-read-js">
                                <span>免费</span>
                                <span>2.7万次观看</span>
                            </div>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="javascrip:;" ipath="">
                        <div class="wl-img-js">
                            <img src="{{asset('images/pc/culum/5.jpg')}}" alt="">
                        </div>
                        <div class="wl-txt-js">
                            <p>志愿填报正确步骤</p>
                            <div class="mf-read-js">
                                <span>免费</span>
                                <span>9万次观看</span>
                            </div>
                        </div>
                    </a>
                </li>
                <div style="clear: both;"></div>
            </ul>

        </div>
        <div style="clear: both;"></div>
        {{--<!-- 分页结构 -->--}}
        {{--<div class="page">--}}
        {{--<ul class="page-list" id="page_l">--}}
        {{--<li class="page-size-box">--}}
        {{--<ul>--}}
        {{--<li>1</li>--}}
        {{--<li>2</li>--}}
        {{--<li>3</li>--}}
        {{--<li>4</li>--}}
        {{--<li>5</li>--}}
        {{--<li>6</li>--}}
        {{--</ul>--}}
        {{--</li>--}}
        {{--<li id="nextpage">下一页</li>--}}
        {{--</ul>--}}
        {{--<div style="clear: both"></div>--}}
        {{--</div>--}}
    </section>
    <!-- 模态框部分 -->
    <div class="moda_zz">
        <div class="pauseimg"></div>
        <div class="videos"></div>
    </div>
@endsection
@section('script')
    <script>
        $(function () {

            $('.culum-vedio li a').click(function () {
                var video = $(this).attr('ipath');
                if(!video) return false;
                $('.videos').html(" <video id =\"video\" src='" + video +
                    "' preload=\"auto\" controls=\"controls\" autoplay=\"autoplay\"></video>");
                $('.moda_zz').show()
                $('.mask').show()
            });
            $(".pauseimg").click(function () {
                var v = document.getElementById('video');
                $('.moda_zz').hide();
                $('.mask').hide();
                v.pause();
                $('.videos').html();
            })
            $('.mask').click(function(){
                var v = document.getElementById('video');
                $('.moda_zz').hide();
                $('.mask').hide();
                v.pause();
                $('.videos').html();
            })

        })
    </script>
@endsection