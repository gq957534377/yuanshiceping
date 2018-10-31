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
    <link rel="stylesheet" href="{{ asset('evaluation/css/swiper.min.css') }}" />
    <link rel="stylesheet" href="{{ asset('evaluation/css/progresscircle.css') }}" />
    <link rel="stylesheet" href="{{ asset('evaluation/css/report.css') }}" />
    <link rel="stylesheet" href="{{ asset('evaluation/css/response.css') }}" />

    <script type="text/javascript" src="https://res.wx.qq.com/open/js/jweixin-1.3.2.js"></script>
    {{--<script src="{{ asset('js/nav.js?__v=20180602210142') }}"></script>--}}
</head>
<body>
    <!--报告页首页-->
    <div class="report_home" style="width: 100%;height: 100%">
        <div class="report_header">
            <span class="iconfont icon-zhankai switchBtn"></span>
            <span class="report_title navTitle">首页</span>
            <div class="clear"></div>
            <ul class="left_nav">
                <li>首页</li>
                <li>最佳专业</li>
                <li>避免专业</li>
                <li>素质模型</li>
                <li>九大潜能</li>
                <li>优势潜能</li>
                <li>劣势潜能</li>
                <li>专业兴趣</li>
                <li>最佳匹配点</li>
                <li>结语</li>
            </ul>
        </div>
        <div class="report_content navIndex">
            <div class="home">
                <img class="logo" src="{{ asset('evaluation/images/logo.png') }}" alt="" />
                <div class="home_title">
                    <p class="home_big_title">高考专业推荐</p>
                    <i class="home_line1"></i>
                    <i class="home_line2"></i>
                    <span class="home_report_tit">测评报告</span>
                </div>
                <p>科学选择 | 个性发展 | 发挥自我 | 成就未来</p>
                <p> <b class="color_blck">{{ $data['report']->user_name }} </b> {{ $data['report']->gender == 1 ? '男' : '女' }}</p>
                <p>{{ $data['report']->user_addr }}</p>
                <p>{{ date('Y-m-d', $data['report']->created_at) }}生成</p>
            </div>
        </div>
    </div>
    <!--目录-->
    <div class="list_report">
        <h2 class="list_report_title">目录</h2>
        <ul>
            <li>
                <span>01</span>
                <p>个人最佳匹配专业推荐 </p>
            </li>
            <li>
                <span>02</span>
                <p>个人应避免专业 </p>
            </li>
            <li>
                <span>03</span>
                <p>个人28项素质模型解析 </p>
            </li>
            <li>
                <span>04</span>
                <p>个人九大潜能分布概况</p>
            </li>
            <li>
                <span>05</span>
                <p>个人优势潜能解析</p>
            </li>
            <li>
                <span>06</span>
                <p>个人劣势潜能解析 </p>
            </li>
            <li>
                <span>07</span>
                <p>个人专业兴趣解析 </p>
            </li>
            <li>
                <span>08</span>
                <p>个人潜能与个人兴趣最佳匹配点解析 </p>
            </li>
        </ul>
    </div>
    <!--前言-->
    <div class="preface_report">
        <h2 class="list_report_title">前 言</h2>
        <div class="list_report_look text_indent">成功心理学最新结论：在外部条件给定的前提下，一个人能否成功，关键在于能否准确认知并全力发挥其天生优势——天赋潜能和性格。这些取得突出成就的人并不是具备什么天赋异禀的天才而是能够把自己的优势潜能在适合自己的领域中不断的应用和发挥从而获得比常人更大的成功！</div>
        <div class="list_report_p padding_2">
            <p class="text_indent">所以自己的优势、潜能、性格是什么？适合在什么专业和领域去发展是对个人的成功至关重要的！选择大于努力！</p>
            <p class="text_indent">高考专业选择时90%的人都在犯的一个错误——以未来的“钱途”或者个人的兴趣来作为选择专业的根据。这是非常不全面的、甚至是短浅的。</p>
            <p class="text_indent">今天某专业赚钱多不代表四年以后依然如此，即使四年以后依然赚钱多但并不代表你做这行也能赚到钱。同样依据个人的兴趣来选择专业也是非常片面的，每个人的兴趣可能会随着经历而变化，尤其高中生这一年龄段社会阅历较少，对自己兴趣的认知是比较表面的，要把兴趣当职业那是需要有性格、天赋、优势、素质能力等基石测评统称为“潜能”来做支撑的，不是一件简单的事情。</p>
            <p class="text_indent">为什么很多人把兴趣当职业时会发现自己连人生的唯一的乐趣都被剥夺了呢？原因很简单，那是因为他不具备兴趣所对应的潜能，所以越做越难受、越做越痛苦。那也有一少部分人把自己的兴趣当职业并且取得很好的成就，那是因为他们具备支撑兴趣所对应的潜能。</p>
            <p class="text_indent">那是不是我具备相应潜能就可以成功，答案是否定的。潜能只是你成功之路的必要条件，如果你不去在适合自己潜能的领域中不断的应用和发挥，即使一个人有天才的基因，但没有进行针对性的培养，也是徒劳！</p>
            <p class="text_indent">在选择专业时不能根据自己的天赋、潜能、性格等相匹配，那么就算你具有再大的潜能也无从得到释放和发挥。具备什么潜能应该去学什么专业，而不是学了什么专业选择做什么工作！</p>
            <p class="text_indent">三百六十行，行行出状元！没有最好的专业，只有最适合的专业！没有不能成就人的专业，只有选错专业的人！</p>
            <p class="text_indent">请您详细阅读此报告，深刻的认知自己，才能在未来的人生道路上占据一个高的起点！</p>
        </div>
        <div class="click_show">
            <span class="iconfont icon-icon01"></span>
            <p>点击查看全文</p>
        </div>
    </div>
    <!--个人最佳匹配专业推荐-->
    <div class="major_recommend navIndex major_tops">
        <h2 class="report_content_title report_content_title1">个人最佳匹配专业推荐</h2>
        <p>根据对你的性格、天赋、潜能、素质能力、行为模式、风格及兴趣等多维度的综合分析与印证，以下你最适合的、最能发挥优势、最容易取得突出成就的20个专业推荐如下：</p>
        <p class="tip" style="text-align: center">(*点击可查看专业详情、就业空间*)</p>
        <ul class="major_recommend_list flex-container">
            @foreach($data['major_grades'] as $major_grade)
                <li class="flex-item">
                    <a href="/report_detail/{{ $major_grade->hasOneMajor->id??'' }}/{{ $major_grade->grade??'' }}/1">
                        <div class="circlechart" data-percentage="{{ $major_grade->grade??'' }}">{{ $major_grade->grade??'' }}%</div>
                        <h5>{{ $major_grade->hasOneMajor->name??'' }}</h5>
                        <p>{{ $major_grade->hasOneMajor->hasOneMajorDetail->career??'' }}</p>
                        {{--<p>是否艺考：是 </p>--}}
                    </a>
                </li>
            @endforeach
        </ul>
        <p class="tip">(注：各专业匹配值小于5%可忽略考虑排序位置)</p>
    </div>
    <!--个人应避免专业-->
    <div class="major_recommend major_recommends navIndex">
        <h2 class="report_content_title report_content_title2">个人应避免专业</h2>
        <p>尺有所长，寸有所短，选择专业应谨遵扬长避短，<span class="color_red">以下是你最不适合、最不具备优势、应该避免选择的10个专业如下:</span></p>
        <ul class="major_recommend_list flex-container">
            @foreach($data['short_major_grades'] as $short_major_grades)
                @if($loop->index < 10)
                    <li class="flex-item">
                        <a href="/report_detail/{{ $short_major_grades->hasOneMajor->id??'' }}/0/0">
                        <div class="circlechart" data-percentage="0">0%</div>
                            <h5>{{ $short_major_grades->hasOneMajor->name??'' }}</h5>
                            <p>{{ $short_major_grades->hasOneMajor->hasOneMajorDetail->career??'' }}</p>
                        </a>
                    </li>
                @endif
            @endforeach

        </ul>
        <ul class="survey_ul">
            <li>如有专业与您实际预期差距较大，请针对下列问题进行自我审视：</li>
            <li>
                <span>1、</span>
                <p>测评答案选择时是否过度深思熟虑、而非凭第一感觉选择？</p>
            </li>
            <li>
                <span>2、</span>
                <p>测评环境是否安静，杂吵的环境会影响您的直观判定?</p>
            </li>
            <li>
                <span>3、</span>
                <p>是否已被自己主观意识或者父母、亲朋好友主观判定某些专业？</p>
            </li>
            <li>
                <span>4、</span>
                <p>测评过程中是否仔细审题后并选择？</p>
            </li>
        </ul>
        <div class="tip_mark">
            <div class="line"></div>
            <p class="color_red"><span class="iconfont icon-laba"></span> 温馨提示 </p>
            <p class="text_just">专业推荐只是基石测评的价值之一，以下内容是针对您多维度的深度解析，我们的目的是让您：</p>
            <p class="text_just">不仅了解自己的优势从而着重的发挥，也清楚自己的短板以便规避，</p>
            <p>请仔细阅读！！！</p>
        </div>
    </div>
    <!--个人28项素质模型解析-->
    <div class="select_import navIndex">
        <h2 class="report_content_title report_content_title3">个人28项素质模型解析</h2>
        <p>素质模型是为完成某项工作、达成某一绩效目标所应具备的系列不同素质要素的组合。学习不同的专业、任职不同的岗位需要不同的素质能力来支撑。素质模型是个人职业生涯、发展规划至关重要的依据，同时也是企业选人、用人的核心标准。</p>
        <p class="tip">（注：报告中所推荐的最佳匹配专业已充分考虑了您的素质模型要素）</p>
        <ul class="quality_title">
            <li><span></span>卓越</li>
            <li><span></span>优秀</li>
            <li><span></span>良好</li>
            <li><span></span>一般</li>
        </ul>
        <!--柱状图-->
        <div id="quality"></div>
    </div>
    <!--个人九大潜能分布概况-->
    <div class="personal_potential navIndex">
        <h2 class="report_content_title report_content_title4">个人九大潜能分布概况</h2>
        <h4>4.1 潜能概述：</h4>
        <p>潜能即是天赋，是在某些事情上所具有的潜在能力和发展空间。这是通过先天遗传加上后天培养所形成的个人发展潜力评估。潜能不代表能力，它代表的是具有在某领域做出突出成就的潜质，想要把潜能转化成能力就需要在具有该类潜能的方向上不断锤炼、实践，增加经验和见识。</p>
        <p>世界上大部分的庸碌者都是因为具有的潜能没有得到过锻炼和发展，反而是在自己潜能较差的方向持续努力，最后取得的效果自然不如意。</p>
        <div><h4>4.2 潜能的价值：</h4><a class="lookCase" href="javascript:;">(查看案例)</a></div>
        <p>在自己的优势潜能领域去发展更容易获得成就，事半功倍；反之在自己的劣势潜能方面发展会使前路坎坷，事倍而功半。</p>
        <h4>4.3 潜能分类：</h4>
        <p>每个人都具有九大类潜能，但强弱分布不同，说明了人与人之间的差异。</p>
        <h4>4.4 潜能发挥建议：</h4>
        <p>成功之道在于最大限度地发挥优势，控制弱点，而不是把重点放在攻克弱点上。潜能与性格、天赋和价值取向息息相关，难以在短期内改变，而且强加改变往往使本来的优势潜能不在具有优势，而本来的短板也不会有多大的提升等不可预测的后果，所以强烈建议测评者和家长：关注和培养TA的优势潜能，在优势方向上去发挥和应用。扬长避短！</p>
        <!--雷达图-->
        <div id="analysisRadar" class="canvasBox"></div>

    </div>
    <!--个人优势潜能解析-->
    <div class="personal_potential_advantage navIndex">
        <h2 class="report_content_title report_content_title5">个人优势潜能解析</h2>
        <!--选项卡-->
        <ul class="personal_potential_tab flex-container tab">
            @foreach($data['potential_grades'] as $potential_grade)
                @if($loop->index <3)
                <li class="@if($loop->first) bg @endif flex-item font_size7 @if($loop->index == 1) border_left boder_right @endif">{{ $potential_grade->hasOnePotential->name }} <br />
                        <span>
                                @switch($loop->index)
                                @case(0)
                                (最优潜能)
                                @break
                                @case(1)
                                (优秀潜能)
                                @break
                                @case(2)
                                (较优潜能)
                                @break
                            @endswitch
                        </span>
                    </li>
                @endif
            @endforeach
        </ul>
        @foreach($data['potential_grades'] as $potential_grade)
            <div class="personal_potential_tab_list tab_list  @if($loop->first) bg @endif">
                <div class="personal_potential_border">
                    @switch($loop->index)
                            @case(0)
                        <span style="display: none">{{ $title = '最优潜能' }}</span>
                            <span>最优潜能概述</span>
                            <p>最优潜能是指个人最本能和最具有优势的潜能，是你未来发展道路上会帮助你取得最大成就的高潜力天赋。在此方面应尽快努力实践和锤炼，尽最大力度培养与充分发挥，以便让你高效的成长，进而早日获得突出成就。</p>
                            @break
                            @case(1)
                        <span style="display: none">{{ $title = '优秀潜能' }}</span>
                        <span>优秀潜能概述</span>
                            <p>优秀潜能是指个人在大部分情况下都会表现出来的优势和潜能，同时是对最优潜能的强力补充，应该针对性培养和发挥，优秀潜能也是你比较容易取得突出成就的领域。</p>
                            @break
                            @case(2)
                        <span style="display: none">{{ $title = '较优潜能' }}</span>
                        <span>较优潜能概述</span>
                            <p>较优潜能是指个人在多数情况下会显现出来的优势和潜能，也是优势领域之一，也应着重培养和发挥，以保证综合发展，使未来具有更大的成长空间。</p>
                            @break
                    @endswitch
                </div>

                <p class="subtitle"><span></span> 你的{{ $title }}是<span>{{ $potential_grade->hasOnePotential->name }}</span>，主要表现在：</p>
                <p class="text_indent">{{ $potential_grade->hasOnePotential->description }}</p>
                <!--选项卡雷达图-->
                <div id="potentialRadar{{$loop->iteration}}" class="canvasBox"></div>
                <p class="subtitle"><span></span> 你的{{ $title }}<span>{{ $potential_grade->hasOnePotential->name }}</span>的优势具体体现在:</p>
                @switch($loop->index)
                    @case(0)
                        @foreach($data['best_potential_sorted_quality_grades'] as $key => $best_potential_sorted_quality_grade)
                            @if(60 <= $best_potential_sorted_quality_grade['quality_grade'])
                                <p>--{{ \App\Models\Quality::getPrefix($best_potential_sorted_quality_grade['quality_grade']) }}{{ $data['best_potential_has_qualities'][$best_potential_sorted_quality_grade['quality_id']]['quality_description'] }}</p>
                            @endif
                        @endforeach
                    @break
                    @case(1)
                        @foreach($data['second_potential_sorted_quality_grades'] as $key => $second_potential_sorted_quality_grade)
                            @if (60 <= $second_potential_sorted_quality_grade['quality_grade'])
                                <p>--{{ \App\Models\Quality::getPrefix($second_potential_sorted_quality_grade['quality_grade']) }}{{ $data['second_potential_has_qualities'][$second_potential_sorted_quality_grade['quality_id']]['quality_description'] }}</p>
                            @endif
                        @endforeach
                    @break
                    @case(2)
                        @foreach($data['third_potential_sorted_quality_grades'] as $key => $third_potential_sorted_quality_grade)
                            @if (60 <= $third_potential_sorted_quality_grade['quality_grade'])
                                <p>--{{ \App\Models\Quality::getPrefix($third_potential_sorted_quality_grade['quality_grade']) }}{{ $data['third_potential_has_qualities'][$third_potential_sorted_quality_grade['quality_id']]['quality_description'] }}</p>
                            @endif
                        @endforeach
                    @break
                @endswitch
                <p class="subtitle"><span></span> 你的<span>行为模式：</span></p>
                @switch($loop->index)
                    @case(0)
                    @foreach($data['best_potential_abilities'] as $ability)
                        @if($loop->index < 2)
                            <p>--{{ $ability->description }}</p>
                        @endif
                    @endforeach
                    @break
                    @case(1)
                    {{--@foreach($data['second_potential_abilities'] as $ability)--}}
                        {{--@if($loop->index < 2)--}}
                            {{--<p>--{{ $ability->description }}</p>--}}
                        {{--@endif--}}
                    {{--@endforeach--}}
                    <p>--{{ $data['second_potential_detail'] }}</p>
                    @break
                    @case(2)
                    @foreach($data['third_potential_abilities'] as $ability)
                        @if($loop->index < 2)
                            <p>--{{ $ability->description }}</p>
                        @endif
                    @endforeach
                    @break
                @endswitch
                <p class="tip">（注：报告中所推荐的最佳匹配专业已充分发挥您的优势潜能）</p>
            </div>
        @endforeach
    </div>
    <!--个人劣势潜能解析-->
    <div class="personal_potential_inferiority navIndex">
        <h2 class="report_content_title report_content_title6">个人劣势潜能解析</h2>
        <div class="personal_potential_border margin_top">
            <span>劣势潜能概述</span>
            <p>劣势潜能是指个人最不具备，最欠缺发展空能，也就是一个人的短板，这是你未来发展道路上应该避免选择的专业和避免从事的职业方向。劣势潜能会对个人发展形成一些阻碍，但它并非是不可提升的，只是提升劣势潜能所需的时间与代价是巨大的，而结果是事倍功半且成长缓慢的。</p>
        </div>
        <p class="subtitle no_bottom_padding"><span></span><span>忠告</span></p>
        <p class="text_indent">改变自己的性格和天赋，是最痛苦和难以见成效的事情。一个人的时间和精力是有限的，取得成功靠的是把自己的优势发挥到极致，而非努力攻克劣势。努力提升劣势好比逆水行舟，而重点发挥优势犹如顺水推舟，事半功倍。</p>
        <p class="tip">（注：报告中所选的专业已为您避免劣势潜能所涉及的专业）</p>
        <p class="subtitle"><span></span>你的<span>劣势潜能</span>如下：</p>
        <ul class="inferiority_ul flex-container">
            @foreach($data['potential_grades_asc'] as $potential_grade_asc)
                @if($loop->index <2)
                    <li class="@if($loop->first) bg @endif flex-item">{{ $potential_grade_asc->hasOnePotential->name }}</li>
                @endif
            @endforeach
        </ul>
        @foreach($data['potential_grades_asc'] as $potential_grade_asc)
            <div class="inferiority_list @if($loop->first) bg @endif">
                <p class="subheading">你的第{{ $loop->iteration == 1 ? '一' : '二' }}个劣势潜能是<span class="color_bule2">{{ $potential_grade_asc->hasOnePotential->name }}</span>，主要表现在：</p>
                <p>{{ $potential_grade_asc->hasOnePotential->shortcoming }}</p>
                <!--劣势选项卡雷达图-->
                <div id="inferiorityRadar{{$loop->iteration}}" class="canvasBox"></div>
                <p class="subheading">你的第{{ $loop->iteration == 1 ? '一' : '二' }}个劣势潜能<span class="color_bule2">{{ $potential_grade_asc->hasOnePotential->name }}</span>最欠缺的能力如下：</p>

                @switch($loop->index)
                    @case(0)
                        @foreach($data['short_first_potential_sorted_quality_grades'] as $key => $short_first_potential_sorted_quality_grade)
                            @if(50 > $short_first_potential_sorted_quality_grade['quality_grade'])
                                <p>--{{ $short_first_potential_sorted_quality_grade['quality_short_description'] }}</p>
                                {{--<p>--{{ $data['short_first_potential_has_qualities'][$short_first_potential_sorted_quality_grade['quality_id']]['quality_description'] }}</p>--}}
                            @endif
                        @endforeach
                    @break
                    @case(1)
                        @foreach($data['short_second_potential_sorted_quality_grades'] as $key => $short_second_potential_sorted_quality_grade)
                            @if(50 > $short_second_potential_sorted_quality_grade['quality_grade'])
                                <p>--{{ $short_second_potential_sorted_quality_grade['quality_short_description'] }}</p>
{{--                                <p>--{{ $data['short_second_potential_has_qualities'][$short_second_potential_sorted_quality_grade['quality_id']]['quality_description'] }}</p>--}}
                            @endif
                        @endforeach
                    @break
                @endswitch




            </div>
        @endforeach
    </div>
    <!--个人专业兴趣解析-->
    <div class="personal_potential personal_potential_interest navIndex">
        <h2 class="report_content_title report_content_title7">个人专业兴趣解析</h2>
        <h4>7.1 专业兴趣概述:</h4>
        <p>兴趣决定投入度，这是高中专业选择中最普遍的标准。请注意，由于高中生对社会的认知和专业的认识不足，容易在兴趣的判断上面出现较大误差；而且随着年龄的增长，兴趣是会变动的。所以不要单纯以肤浅的兴趣认知为选择专业的标准。</p>
        <h4>7.2 专业兴趣的价值:</h4>
        <p>有了兴趣才有投入，有了投入才可能优秀。兴趣对人生的指导意义非比寻常。但兴趣并不是“喜欢打电脑游戏，就是喜欢计算机专业”这么肤浅、害人害己的认知，需要进行深入精准的测评，只有找到深层次的真正兴趣和个人潜能相结合，才是最科学的专业选择。</p>
        <h4>7.3 专业兴趣的分类:</h4>
        <p>专业兴趣按社会元素、职业倾向不同分为六类，每类分数越高代表在此领域的兴趣程度越高。在选择专业时建议重点关注前3类兴趣。你的专业兴趣分布如下：</p>
        <!--雷达图-->
        <div id="interestRadar" class="canvasBox"></div>
        <h4>7.4 专业兴趣建议:</h4>
        <p>在选择专业的时建议重点关注前3类兴趣。选择的专业最好在前三个兴趣分类中，你的前三个专业兴趣如下：</p>
        <ul class="flex-container personal_potential_interest_ul tab">
            @foreach($data['interest_grades'] as $interest_grade)
                @if($loop->index < 3)
                    <li class="flex-item font_size7 @if($loop->index == 1) boder_left boder_right @endif @if($loop->first) bg @endif">{{ $interest_grade->hasOneInterest->name }}</li>
                @endif
            @endforeach
        </ul>
        @foreach($data['interest_grades'] as $interest_grade)
            @if($loop->index < 3)
                <div class="tab_list personal_potential_interest_div  @if($loop->first) bg @endif">
                    <p class="subheading color_bule2">类型特点：</p>
                    <p>{{ $interest_grade->hasOneInterest->detail }}</p>
                    <p class="subheading">适合的<span class="color_bule2">典型职业：</span></p>
                    <p>{{ $interest_grade->hasOneInterest->career }}</p>
                </div>
            @endif
        @endforeach
    </div>
    <!--个人潜能与个人兴趣/最佳匹配点解析-->
    <div class="mate_report navIndex">
        <h2 class="report_content_title report_content_title8">个人潜能与个人兴趣  <br /> 最佳匹配点解析</h2>
        <div class="personal_potential_border margin_top">
            <span>最佳匹配点概述</span>
            <p>最佳匹配点主要是从个人最具备的潜能和个人最感兴趣的领域中寻找最匹配的交集之处，也就是既有兴趣去做，且有潜能优势可以做好的领域。由于家庭教育和经历不尽相同，所以每个人未必会在个人发展过程中培养出兴趣与天赋完全吻合的成果。</p>
        </div>
        <p class="subtitle color_bule2 font_weight"><span></span> 专业建议: <span class="look_detail lookCase color_bule1">(查看案例)</span></p>
        <p class="text_indent padding_1">本维度旨在寻找到个人既感兴趣又有潜能优势可以长远发展的领域。但若没有最佳匹配点，建议以个人潜能为最重要的选择专业指标，因为个人潜能在高中生这一年龄阶段已定型且相对清晰，并且后天较难改变，但兴趣却具有不稳定性、可能会随着经历发生变化，并且可培养。所以在没有最佳匹配点时，在保证兴趣不产生排斥的情况下，专业选择会以潜能为主导，再适当的培养个人兴趣。</p>

        <p class="tip">（注：报告中所推荐的最佳匹配专业已充分考虑您的最佳匹配点）</p>
        <div class="circle_box">
            <div class="pink_cricle cricle">
                <span>个人兴趣</span>
            </div>
            <div class="blue_cricle cricle">
                <span>最佳匹配点</span>
                <span>个人潜能</span>
            </div>
        </div>
        <!--柱状图-->
        <div id="matchGraph"></div>
        <p class="subtitle"><span></span> 你的潜能和兴趣进行匹配分析后，在专业选择的过程中能够让你既有<span class="color_bule2">潜能</span>的支撑匹配，同时又在<span class="color_bule2">兴趣</span>方面也不会排斥的<span class="color_bule2">匹配点</span>如下：</p>
        <ul class="flex-container mate_report_ul tab">
            @foreach($data['shake_grades'] as $key => $shake_grade)
                @if($key < 3)
                    <li class="flex-item font_size7 @if($loop->index == 1) boder_left boder_right @endif @if($loop->first) bg @endif">{{ $data['shakes'][$shake_grade['shake_id']]['name'] }}</li>
                @endif
            @endforeach
        </ul>
        @foreach($data['shake_grades'] as $key => $shake_grade)
            @if($key < 3)
                <div class="tab_list mate_report_div @if($loop->first) bg @endif">
                    <p class="subheading">主要表现：</p>
                    <p>在{{ $data['shakes'][$shake_grade['shake_id']]['description'] }}</p>
                    <p class="subheading">发展建议：</p>
                    <p>{{ $data['shakes'][$shake_grade['shake_id']]['direction'] }}</p>
                </div>
            @endif
        @endforeach
    </div>
    <!--底部结语-->
    <div class="bottom_box navIndex">
        <!--底部结语-->
        <div class="bottom_langue">
            <h2 class="list_report_title">结语</h2>
            <p>本报告所推荐的专业，都是结合了您的性格、兴趣、潜能等心理测量因素综合得出的客观结果，可作为个人专业选择的重要参考，但并非为专业选择唯一标准。建议在志愿填报时还要考虑专业的就业指数、所选专业对招生是否有特殊要求等，需要您全方位进行权衡。</p>
        </div>
        <div class="bottom_epilogue">
            <img class="report_logo" src="{{ asset('evaluation/images/logo.png') }}" alt="" />
            <p class="text-center font_size55 color_blck3">以科学的方式帮助高中生照亮前程!</p>
            <!--轮播图-->
            <div class="swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <img class="mui-pull-left bottom_epilogue_left" src="{{ asset('evaluation/images/report_bottom_pic.png') }}" alt="" />
                        <div class="mui-pull-right bottom_epilogue_right">
                            <p>咨询老师：石冰</p>
                            <p>QQ号码：1661954040</p>
                        </div>
                    </div>
                    {{--<div class="swiper-slide">--}}
                        {{--<img class="mui-pull-left bottom_epilogue_left" src="{{ asset('evaluation/images/report_bottom_pic.png') }}" alt="" />--}}
                        {{--<div class="mui-pull-right bottom_epilogue_right">--}}
                            {{--<p>咨询老师：王莎</p>--}}
                            {{--<p>QQ号码：929292929</p>--}}
                        {{--</div>--}}
                    {{--</div>--}}
                    {{--<div class="swiper-slide">--}}
                        {{--<img class="mui-pull-left bottom_epilogue_left" src="{{ asset('evaluation/images/report_bottom_pic.png') }}" alt="" />--}}
                        {{--<div class="mui-pull-right bottom_epilogue_right">--}}
                            {{--<p>咨询老师：王莎</p>--}}
                            {{--<p>QQ号码：929292929</p>--}}
                        {{--</div>--}}
                    {{--</div>--}}
                </div>
                <!-- Add Arrows -->
                {{--<div class="swiper-button-next"></div>--}}
                {{--<div class="swiper-button-prev"></div>--}}
            </div>
            <p class="font_size5 color_greyA8 text-center" >*如有疑问，可以随时与我们老师联系*</p>

            <!--二维码-->
            <img class="er_code" src="{{ asset('evaluation/images/report_code.png') }}" alt="" />
            <p class="bottom_follow_p">长按关注基石测评服务号</p>
            <a class="bottom_iphone" href="tel://400-101-9859">400-101-9859</a>
            <a class="link_gw" href="http://5b3c274257fb0.site.mvad.com">www.jishiceping.com</a>
        </div>
    </div>
    <!--查看报告弹框-->
    <div class="mark">
        <span class="iconfont icon-guanbi closeBtn"></span>

        <div class="mark_box">
            <h4>潜能案例-爱迪生</h4>
            <img class="report_mark_icon" src="{{ asset('evaluation/images/report_mark_icon.png') }}" alt="" />
            <p>爱迪生与爱因斯坦在小的时候都未展现其天才的能力，甚至被认为愚笨不堪，被老师和身边的人所嫌弃。没人能想象到，他们进入物理的科学殿堂能够有如此辉煌的成就，因为他们的天赋潜能是需要挖掘和培养的。他们之所以能有如此成就是因为他们的天赋潜能具有深入研究的思维潜能和克服困难的坚韧性，这是每个人与生俱来的基因加上后天培养所共同形成的每个人与众不同的特质，你一定也有！</p>
        </div>
    </div>

    <script type="text/javascript" src="{{asset('evaluation/js/zepto.min.js')}}"></script>
    <script type="text/javascript" src="{{asset('evaluation/js/mui.min.js')}}"></script>
    <script>
        potentials = {!! json_encode($data['potentials']) !!}; //潜能
        interests = {!! json_encode($data['interests']) !!}; //兴趣
        shakes = {!! json_encode($data['shakes']) !!}; //型格
        qualities = {!! json_encode($data['qualities']) !!}; //素质

        potential_grades = {!! json_encode($data['potential_grades']) !!} ;//潜能得分
        quality_grades = {!! json_encode($data['quality_grades']) !!} ;//素质模型得分
        interest_grades = {!! json_encode($data['interest_grades']) !!} ;// 兴趣得分
        shake_grades = {!! json_encode($data['shake_grades']) !!} ;// 型格得分

        best_potential_has_qualities = {!! json_encode($data['best_potential_has_qualities']) !!} ; //最佳潜能
        second_potential_has_qualities = {!! json_encode($data['second_potential_has_qualities']) !!}; //第二潜能
        third_potential_has_qualities = {!! json_encode($data['third_potential_has_qualities']) !!}; //第三潜能

        short_first_potential_has_qualities = {!! json_encode($data['short_first_potential_has_qualities']) !!}; //短板第一潜能
        short_second_potential_has_qualities = {!! json_encode($data['short_second_potential_has_qualities']) !!}; //短板第二潜能
    </script>
    <script src="{{asset('evaluation/js/jquery-2.1.0.js')}}"></script>
    <script src="{{asset('evaluation/js/mui.min.js')}}"></script>
    <script src="{{asset('evaluation/js/zepto.min.js')}}"></script>
    <script src="{{asset('evaluation/js/echarts.min.js')}}"></script>
    <script src="{{asset('evaluation/js/swiper.min.js')}}"></script>
    <script src="{{asset('evaluation/js/function.js?v1.0')}}"></script>
    <script src="{{asset('evaluation/js/charts.js?v1.0')}}"></script>
    <script src="{{asset('evaluation/js/progresscircle.js')}}"></script>
    <script>
        $(function () {
            $('.look_detail').click(function () {
                $('.report_mark_icon').attr('src',"{{ asset('evaluation/images/report_mark_icon1.png') }}");
                $('.mark_box p').html('爱因斯坦小时候最喜欢音乐、小提琴，他从六岁起就学习拉小提琴，曾幻想成为伟大的音乐家。他一有空闲就练琴，可学了8年，依然没有什么进步，就连父母都觉得这可怜的孩子拉得实在太蹩脚了，完全没有音乐天赋，最终不得不放弃这个音乐家的职业梦；但是爱因斯坦的思维、研究、创新潜能很突出，他在这一优势领域不断的实践、学习和发挥优势，让他在物理学的道路上成就了不凡。这就是兴趣与潜能对一个人未来的影响，有兴趣、有潜能最完美，如若不然，潜能才是奠定你成功的基石。')
            })

        })
    </script>
</body>
</html>
