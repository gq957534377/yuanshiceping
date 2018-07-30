@extends('home.layouts')
@section('content')
    <div class="js-con-mainNew wx-12">
        <div class="js-con-nxt">
            <h1 class="txt-lt">最新资讯</h1>
        </div>
        <div class="js-News-con">
            <section class="js-News-nr">
                <div class="js-News-title">
                    <h3>{{$details->title}}</h3>
                    <div class="dw-time-auther mt15">
                        发布日期：
                        <span>{{$details->created_at}}</span>
                        <span>北京基石测评</span>
                    </div>
                </div>
                <hr class="mm40" />
                <div class="js-bt-nWes">
                    {!! $details->content !!}

                </div>
                <div class="about-js-news">
                    <div class="ab-js-title">
                        <img src="{{asset('images/pc/zx/ab_03.png')}}" alt="">
                    </div>
                    <div class="ab-txt">
                        <p>咨询热线：400-101-9859</p>
                        <p>官网：
                            <a href="https://www.jishiceping.com">https://www.jishiceping.com</a>
                        </p>
                        <p>官网微博：北京基石测评</p>
                    </div>
                </div>
                <div class="end-js">-END-</div>
                <hr class="js-dw-ab-hx" />
                {{--<ul class="page-list-article">--}}
                {{--<li>上一篇：--}}
                {{--<a href="">高考报考志愿这点千万要注意，否则分数再高都浪费！</a>--}}
                {{--</li>--}}
                {{--<li>下一篇：--}}
                {{--<a href="">志愿 | 高职院校中的“211”，你不知道的香饽饽都在这里！</a>--}}
                {{--</li>--}}
                {{--</ul>--}}
            </section>
        </div>
    </div>
@endsection