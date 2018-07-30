@extends('home.layouts')
@section('content')
    <!-- 产品部分 -->
    <article class="dd-cp-js">
        <div class="top-title">
        </div>
        <div class="cp-nr">
            <div>
                <div class="txt-icon fl"></div>
                <div class="lt-tit fl">
                    高中生专业选择测评
                </div>
                <div style="clear:both;"></div>
                <div class="nr-txt mt25">
                    <p>
                        研究发现：在外部条件给定的前提下，一个人能否成功，关键在于能否准确认知并全力发挥其天生优势——天赋和性格。 基石高中生专业选择测评通过对高中生性格、天赋、行为风格、兴趣等多维度精准分析，利用各行、各业、各岗位的企业用人标准及能力素质模型的大数据精准匹配最能发挥其个人优势与潜能的专业，帮助高中生规划适合自己的职业方向。</p>
                    <p>基石测评研究发现：在外部条件给定的前提下，一个人能否成功，关键在于能否准确认知并全力发挥其天生优势——天赋和性格。 基石高中生专业选择测评通过对高中生性格、天赋、行为风格、兴趣等多维度精准分析，利用各行、各业、各岗位的企业用人标准及能力素质模型的大数据精准匹配最能发挥其个人优势与潜能的专业，帮助高中生规划适合自己的职业方向。</p>
                </div>
            </div>
            <div>
                <div class="txt-icon fl"></div>
                <div class="lt-tit fl">

                    视频内容标题
                </div>
                <div style="clear:both;"></div>
                <div class="mt25" style="">
                    <div class="videolist" ipath="{{asset('/images/js.mp4')}}">
                        <img src="{{asset('images/pc/video.jpg')}}" />
                    </div>
                </div>
            </div>
        </div>
    </article>
    <div style="clear:both;"></div>
    <!-- 高考选专业 -->
    <section class="dd-zy js-gaok ">
        <div class="dd-zy-title">
        </div>
        <div class="zy-con">
            <div class="nr-tit-h1">
                <h3>高考结束，大学专业选择面临难题？
                </h3>
                <h3>选择专业，还在靠父母朋友推荐，并不知道该怎么选择？</h3>
            </div>
            <div class="nr-zy">

                <!-- txt -->
                <div class=" mt25">
                    <p>
                    <h4 style="margin: 20px 0 10px 25px">高考你还再帮孩子这样选专业？？？</h4>
                    </p>
                    <p>因受认知水平和知识结构所限，选专业还在靠拍脑袋、凭感觉？</p>
                    <p>选专业还在追热门、随大流？</p>
                    <p>选专业只看未来的“钱途”？</p>
                    <p>把自己的想法强加给孩子，完成自己的心愿？</p>
                    <p>选专业还在凭孩子的表面兴趣？</p>
                    <p>选专业还在“百度”哪个专业好？</p>
                    <p>面对2800多所大学，587个专业一脸茫然根本不知道该选什么专业？</p>
                    <div class="btn-con">
                        <a href="{{url('/extension')}}" class="fr ">点击获取解决办法</a>
                    </div>
                </div>
                <!-- video -->
                <div>
                    <div class="nr-sp mt25" style="">
                        <div class="video-bf"><img src="{{asset('/images/pc/WechatIMG3.jpeg')}}"></div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- 测评method -->
    <section class="dd-zy js-method ">
        <div class="dd-zy-txt-me">
        </div>
        <div class="zy-cons">
            <div class="nr-tit-h1">
                <h3>想学某个专业，但是真的适合自己吗

                </h3>
                <h3> 基石测评，帮助你发现自己的优势以及潜能，能更好的选择自己的专业</h3>
            </div>
            <div class="nr-zy">

                <!-- txt -->
                <div class=" mt25">
                    <p>
                        三百六十行，行行出状元！没有不能成就人的专业，只有选错专业的人！ 北京基石测评公司用12年的专业沉淀，通过240万职场人才模型大数据的应用，准确为学生匹配专业类别， 将孩子的性格、潜能、兴趣与专业做到了精准匹配，从而为你的孩子规划一个适合他的未来发展方向，让他们少走弯路，
                        为未来的成功奠定基石。
                    </p>
                    <p>“世上没有绝对的庸才，只有放错位置的人才”。 一个人的能力来源于经历和潜能，他们一定是相互促进的关系。大部分人的经历可自主选择，但潜能却不甚了解。如果不能为自己的潜能和经历寻找到契合点，那么所选择的经历也不过是人生中无奈的一段路，所具有的潜能也无从得到释放和发挥。
                    </p>
                    <div class="btn-con">
                        <a href="{{url('/product')}}" class="fr" >点击获取解决办法</a>
                    </div>
                </div>

                <!-- video -->
                <div>
                    <div class="nr-sp mt25" style="">
                        <div class="video-bf"><img src="{{asset('/images/pc/WechatIMG2.jpeg')}}"></div>
                    </div>
                </div>

            </div>
        </div>
    </section>
    <!-- method cp -->
    <section class="me-js-cp">
        <div class="lt-me">
            <h1>专业、科学的测评产品</h1>
            <hr>
            <div class="h3-txt" style="margin-top: 36px">
                <h3>彻底解决专业方向的选择难题</h3>
                <h3>你的未来人生会在这里改变</h3>
            </div>
        </div>
        <div class="rt-me">
            <div class="btn-con" id="method-sok">
                <button class="fr">查看改变人生的方法</button>
                <h3 class="fa fa-arrow-circle-o-right"></h3>
            </div>
        </div>
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
        $('.videolist').each(function () {
            $(this).hover(function () {
                $(this).find('.videoed').show();
            }, function () {
                $(this).find('.videoed').hide();
            });
            $(this).click(function () {
                var video = $(this).attr('ipath');
                $('.videos').html(" <video id =\"video\" src='" + video +
                    "' preload=\"auto\" controls=\"controls\" autoplay=\"autoplay\"></video>");
                $('.moda_zz').show()
                $('.mask').show()
            });
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