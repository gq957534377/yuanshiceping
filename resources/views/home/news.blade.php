@extends('home.layouts')
@section('content')
    <!-- 高考资讯&最新活动 -->
    <section class="js-new overflow-hide" style="background: rgb(248,248,248);">
        <div class="js-news-txt"></div>
        <div class="js-new-con">
            <div class="js-new-lt">
                @foreach($news as $item)
                <a class="news-fen" href="{{url('newsDetail/').'/'.$item['id']}}">
                    <div class="js-lt-img fl">
                        <img src="{{$item['banner']}}" alt="">
                    </div>
                    <div class="js-rt-tcon fl">
                        <h3>{{$item['title']}}</h3>
                        <p>{{$item['keyword']}}</p>
                        <div class="up-time">
                            <span class="js-time-news">{{$item['created_at']}}</span>
                            <span class="js-read-math fr">{{$item['read_num']}}</span>
                        </div>
                    </div>
                </a>
                <hr/>
                @endforeach

            </div>
            <div class="js-new-rt">
                <ul>
                    <li><img src="{{asset('images/pc/WechatIMG2.jpeg')}}"></li>
                    <li><img src="{{asset('images/pc/WechatIMG3.jpeg')}}"></li>
                    <li><img src="{{asset('images/pc/WechatIMG7.jpeg')}}"></li>
                    <li><img src="{{asset('images/pc/WechatIMG8.jpeg')}}"></li>
                </ul>
            </div>
        </div>
    </section>
    <div style="clear: both"></div>
@endsection