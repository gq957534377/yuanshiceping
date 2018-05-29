<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>我的测评报告</title>
    <meta name="description" content="">
    <meta name="keywords" content="">
    <link href="{{ URL::asset('bootstrap/css/bootstrap.min.css') }}" rel="stylesheet">
    <link rel="stylesheet" href="{{ URL::asset('style.css') }}">
    <script src="{{ asset('js/echarts.js') }}"></script>
    <script>
        var potentials = {!! json_encode($potentials) !!} //潜能
        var interests = {!! json_encode($interests) !!} //兴趣
        var shakes = {!! json_encode($shakes) !!} //型格

        var potential_grades = {!! json_encode($potential_grades) !!} //潜能得分
        var quality_grades = {!! json_encode($quality_grades) !!} //素质模型得分
        var interest_grades = {!! json_encode($interest_grades) !!} // 兴趣得分
        var shake_grades = {!! json_encode($shake_grades) !!} // 型格得分

        var best_potential_has_qualities = {!! json_encode($best_potential_has_qualities) !!} //最佳潜能
        var second_potential_has_qualities = {!! json_encode($second_potential_has_qualities) !!} //第二潜能
        var third_potential_has_qualities = {!! json_encode($third_potential_has_qualities) !!} //第三潜能


        var short_first_potential_has_qualities = {!! json_encode($short_first_potential_has_qualities) !!} //短板第一潜能
        var short_second_potential_has_qualities = {!! json_encode($short_second_potential_has_qualities) !!} //短板第二潜能
    </script>

</head>
<body>
<div class="container-fluid">
    <div class="row-fluid">
        <div class="col-xs-12">
            <div class="cover">
                <div class="created_at_block">
                    <p class="col-xs-12 created_at text-right">{{ date('Y-m-d', $report->created_at) }}</p>
                    <p class="col-xs-12 created_at text-right">生成</p>
                </div>
                <div class="col-xs-8 col-xs-offset-2">
                    <img class="img-responsive center-block" alt="340x656" src="{{ URL::asset('images/cover.png') }}" />
                </div>
                <div class="col-xs-12 clearfix user-info">
                    <div>
                        <span class="user-name">{{ $user->name }}</span>
                        <span class="user-gender font28 black888">{{ $user->sex == 1 ? '男' : '女' }}</span>
                    </div>
                    <div class="user-school">
                        <span class="font28 black888">{{ $user->address }}</span>
                    </div>
                    <div>
                        <i class="blue-under-line"></i>
                    </div>



                </div>

            </div>


        </div>
    </div>
    <div class="row-fluid">
        <div class="col-xs-12">
            <div class="preface">
                <div class="zc-title">
                    <img src="{{ URL::asset('images/blue-line.png') }}" alt="" class="img-responsive">
                    <span>前言</span>
                </div>
                <div class="col-xs-12 clearfix">
                    <p>成功心理学的最新研究发现：在外部条件给定的前提下，一个人能否成功，关键在于能否准确识别并全力发挥其天生优势——<span class="emphasis">天赋和性格</span>。</p>
                    <p>“一母生九子，九子各不同。”每个人都有自己的天赋，就如同每个人都有自己的性格一样，每个人在自己的天赋和与性格匹配的方面学习进步最快、成长空间、潜力最大，能够获得的成就也最大；相反，如果一个人一直在自己的短板、不适合自己性格的方面去努力，只会让自己深陷于泥潭之中，丧失信心、痛苦、挣扎、没有价值感，更谈不上成功！</p>
                    <p>美国总统罗斯福曾说过：“成功者大都不是天才，他们只是一些有着普普通通品质的人。但他们在适合自己性格的工作中，充分挖掘了自己这些普普通通的品质，从而达到了一个不一般的程度。”</p>
                    <p>那么自己的性格特点是什么？天赋又是什么？什么才是适合自己的？</p>
                    <p>90%的高中生不知道自己要学什么专业，适合学什么专业！本测评最大的价值是创始团队用10年的时间潜心研发，并通过为世界500强企业、国内知名企业做人才甄选与评鉴，人才适岗度、胜任能力评估等人力资源系统咨询服务中，不断的搜集与分析各行、各业、各岗位优秀模型，不断的应用与印证，而取得的专业成果，以帮助高中生认知自己、发现自己、选择最适合自己的专业！为高中生未来的成功奠定基石。</p>
                </div>
                <div class="col-xs-12">
                    <p class="slogan">没有最好的专业，只有最适合的专业！</p>
                    <p class="slogan">你特别的聪明才智就藏在你的性格天赋里！</p>
                    <p class="slogan">选择大于努力！发现自我，成就未来！</p>
                </div>
                <div class="col-xs-12">
                    <p class="zc-sub-title text-center black888 font30">报告的解读</p>
                    <p class="zc-h1 text-center">潜能=性格+天赋</p>
                    <div class="" style="margin-bottom: 3rem">
                        <i class="blue-under-line center-block"></i>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <div class="row-fluid zc">
        <div class="col-xs-12 contents">
            <div class="zc-title">
                <img src="{{ URL::asset('images/blue-line.png') }}" alt="" class="img-responsive">
                <span>目录</span>
            </div>
            <ul class="col-xs-12 font28 color333">
                <li><i></i>个人潜能分布总图（概况）</li>
                <li><i></i>最佳潜能解析</li>
                <li><i></i>第二潜能解析</li>
                <li><i></i>第三潜能解析</li>
                <li><i></i>个人短板解析2个</li>
                <li><i></i>个人专业兴趣解析</li>
                <li><i></i>个人潜能与个人兴趣最佳匹配点解析</li>
                <li><i></i>个人高匹配度的专业推荐</li>
                <li><i></i>所推荐专业的详情与未来就业空间</li>
            </ul>
        </div>
    </div>

    <div class="row-fluid zc">
        <div class="col-xs-12">
            <div class="zc-h2 font30 color333 bold"><i><img src="{{ URL::asset('images/icon_grqn.png') }}" alt=""></i>个人潜能分布总图</div>
            <div class="zc-content font26 color666">
                潜能是人在其性格、天赋和经历相结合下所长期培养出来的，具有在某领域做出突出成就的潜质，是一个人在哪些方面发展能够事半功倍的精确指导。每个人都具有九大类潜能，具体分布因人而异。潜能与性格、天赋和价值取向息息相关，难以在短期内改变，而且强加改变往往使本来的优势潜能不在具有优势，而本来的短板也不会有多大的提升等不可预测的后果，所以强烈建议测试者和家长：关注和培养TA的优势潜能！扬长避短！
            </div>

            <div class="radar" id="potential_grades"></div>

            <div class="comment">
                @foreach($level_grades as $level_grade)
                <div>
                    <h1 class="emphasis"><i></i>{{ trim($level_grade['name'], '/') }}</h1>
                    <img src="{{ URL::asset($level_grade['star_img']) }}" alt="">
                    <p class="font26 color666">{{ $level_grade['description'] }}</p>
                </div>
                @endforeach

            </div>

        </div>
    </div>
    <div class="row-fluid zc">
        <div class="col-xs-12">

            <div class="zc-cat-title font29 color333 bold"><i><img src="{{ URL::asset('images/icon_zjqn.png') }}" alt=""></i>最佳潜能解析</div>
            <div class="zc-content font26 color666">
                最佳潜能是指个人最本能和最具有优势的潜能，是你未来发展道路上会帮助你取得最大成就的高潜力素养，在此方面应该尽快下最大力度培养与充分发挥，以便不断的沉淀此方面的能力，进而早日获得突出成就
            </div>
            <div class="zc-result">
                <p class="font26 color888">你的最佳潜能是：<span class="emphasis">{{ $best_potential_name = $potentials[$potential_grades[0]['potential_id']]['name'] }}</span></p>
                <p class="font26 color666">主要表现在：</p>
                <p class="font26 color35">{{ $potentials[$potential_grades[0]['potential_id']]['description'] }}</p>
            </div>

            <div class="radar" id="best_potential">


            </div>

            <div class="comment">
                <p class="font26 color35">你的最佳潜能 <span class="emphasis">{{ $best_potential_name }}</span> 优势具体体现在:</p>
                @foreach($best_potential_sorted_quality_grades as $key => $best_potential_sorted_quality_grade)
                    @if($key < (count($best_potential_sorted_quality_grades)-1))
                <p class="font28 color35"><i></i>{{ \App\Models\Quality::getPrefix($best_potential_sorted_quality_grade['quality_grade']) }}{{ $best_potential_has_qualities[$best_potential_sorted_quality_grade['quality_id']]['quality_description'] }}</p>
                    @endif
                @endforeach

                <div>
                    <p class="font26 color35"><img class="one-img" src="{{ URL::asset('images/icon_warning.png') }}" alt="">以下是你最佳潜能 <span class="emphasis">{{ $best_potential_name }}</span> 中的较弱势的素质能力，
                        建议要重点针对性的进行提升，才能让你的最佳潜能得到
                        更加完美的体现：</p>
                    @foreach($best_potential_sorted_quality_grades as $key => $best_potential_sorted_quality_grade)
                        @if($key == (count($best_potential_sorted_quality_grades)-1))
                            <p class="font28 color35"><i></i>{{ \App\Models\Quality::getPrefix($best_potential_sorted_quality_grade['quality_grade']) }}{{ $best_potential_has_qualities[$best_potential_sorted_quality_grade['quality_id']]['quality_description'] }}</p>
                        @endif
                    @endforeach
                </div>
                <p class="font26 color35">你的行为模式：</p>
                @foreach($best_potential_abilities as $ability)
                <div>
                    <h1 class="font32 blue bold">{{ $ability->name }}</h1>

                    <p class="font28 color35"><i></i>{{ $ability->description }}</p>
                </div>
                @endforeach

            </div>

        </div>
    </div>

    <div class="row-fluid zc">
        <div class="col-xs-12">
            <div class="zc-cat-title font29 color333 bold"><i><img src="{{ URL::asset('images/icon_deqn.png') }}" alt=""></i>{{ $second_potential_name = $potentials[$potential_grades[1]['potential_id']]['name'] }}</div>
            <div class="zc-content font26 color666">
                第二潜能是个人在大部分情况下都会表现出来的优势和潜能，同时是对最佳潜能的强力补充，应该针对性培养和发挥，第二潜能也是你比较容易取得突出成就的领域。
            </div>
            <div class="zc-result">
                <p class="font26 color888">你的第二潜能是：<span class="emphasis">{{ $second_potential_name }}</span></p>
                <p class="font26 color666">主要表现在：</p>
                <p class="font26 color35">{{ $potentials[$potential_grades[1]['potential_id']]['description'] }}</p>
            </div>

            <div class="radar" id="second_potential"></div>

            <div class="comment">
                <p class="font26 color35">你的第二潜能 <span class="emphasis">{{ $second_potential_name }}</span> 优势具体体现在:</p>

                @foreach($second_potential_sorted_quality_grades as $key => $second_potential_sorted_quality_grade)

                        <p class="font28 color35"><i></i>{{ \App\Models\Quality::getPrefix($second_potential_sorted_quality_grade['quality_grade']) }}{{ $second_potential_has_qualities[$second_potential_sorted_quality_grade['quality_id']]['quality_description'] }}</p>

                @endforeach

                <p class="font26 color35">你的行为模式：</p>
                @foreach($second_potential_abilities as $ability)
                    <div>
                        <h1 class="font32 blue bold">{{ $ability->name }}</h1>

                        <p class="font28 color35"><i></i>{{ $ability->description }}</p>
                    </div>
                @endforeach


            </div>

        </div>
    </div>

    <div class="row-fluid zc">
        <div class="col-xs-12">
            <div class="zc-cat-title font29 color333 bold"><i><img src="{{ URL::asset('images/icon_dsqn.png') }}" alt=""></i>第三潜能解析</div>
            <div class="zc-content font26 color666">
                第三潜能是个人在多数情况下会显现出来的优势和潜能，也是对最佳潜能和第二潜能的补充，也应着重培养和发挥，以保证在全方位发展，具有更大的成长空间。
            </div>
            <div class="zc-result">
                <p class="font26 color888">你的第三潜能是：<span class="emphasis">{{ $third_potential_name = $potentials[$potential_grades[2]['potential_id']]['name'] }}</span></p>
                <p class="font26 color666">主要表现在：</p>
                <p class="font26 color35">{{ $potentials[$potential_grades[2]['potential_id']]['description'] }}</p>
            </div>

            <div class="radar" id="third_potential"></div>

            <div class="comment">
                <p class="font26 color35">你的第三潜能 <span class="emphasis">{{ $third_potential_name }}</span> 优势具体体现在:</p>
                @foreach($third_potential_sorted_quality_grades as $key => $third_potential_sorted_quality_grade)

                    <p class="font28 color35"><i></i>{{ \App\Models\Quality::getPrefix($third_potential_sorted_quality_grade['quality_grade']) }}{{ $third_potential_has_qualities[$third_potential_sorted_quality_grade['quality_id']]['quality_description'] }}</p>

                @endforeach
                <div>
                    <p class="font26 color35"><img class="one-img" src="{{ URL::asset('images/icon_grdb.png') }}" alt="">个人短板分析</p>
                    <p class="font28 color35">个人短板是指个人最不具备、最欠缺的潜能，是你未来发展道路上应该避免选择的专业和避免从事的职业。长期在短板领域投入精力不仅会让自己承担更大的精神与心理压力，同时无疑是在用自己的短板与他人的优势做比拼，长此以往，会让人逐渐丧失信心，痛苦、挣扎、没有价值感等感觉会随之而来，更谈不上成功！建议：选择的专业和未来从事的职业尽量避开需要该潜能的领域。</p>
                </div>
                <div class="zc-result">
                    <p class="font26 color888">你的第一个短板潜能是：<span class="emphasis">{{ $short_first_potential_name = $potentials[$potential_grades[8]['potential_id']]['name'] }}</span></p>
                    <p class="font26 color666">主要表现在：</p>
                    <p class="font26 color35">{{ $potentials[$potential_grades[8]['potential_id']]['shortcoming'] }}</p>
                </div>
                <div class="radar" id="short_first_potential"></div>
                <div class="zc-result">
                    <p class="font26 color888">你的第一个短板潜能 <span class="emphasis">{{ $short_first_potential_name }}</span> 最欠缺的能力是:</p>

                    @foreach($short_first_potential_sorted_quality_grades as $key => $short_first_potential_sorted_quality_grade)
                        @if($key == (count($short_first_potential_sorted_quality_grades)-1))
                            <p class="font26 color35"><i></i>{{ $short_first_potential_has_qualities[$short_first_potential_sorted_quality_grade['quality_id']]['quality_description'] }}</p>
                        @endif
                    @endforeach
                </div>

            </div>

            <div class="comment">
                <p class="font26 color35">你的第二个短板潜能 <span class="emphasis">{{ $short_second_potential_name = $potentials[$potential_grades[7]['potential_id']]['name'] }}</span> </p>

                <p class="font28 color35">主要表现在:</p>
                <p class="font28 color35">{{ $potentials[$potential_grades[7]['potential_id']]['shortcoming'] }}</p>


                <div class="radar" id="short_second_potential"></div>
                <div class="zc-result">
                    <p class="font26 color888">你的第二个短板潜能 <span class="emphasis">{{ $short_second_potential_name }}</span> 最欠缺的能力是:</p>

                    @foreach($short_second_potential_sorted_quality_grades as $key => $short_second_potential_sorted_quality_grade)
                        @if($key == (count($short_second_potential_sorted_quality_grades)-1))
                            <p class="font26 color35"><i></i>{{ $short_second_potential_has_qualities[$short_second_potential_sorted_quality_grade['quality_id']]['quality_description'] }}</p>
                        @endif
                    @endforeach
                </div>
                <div>
                    <p class="font26 color35"><img class="one-img" src="{{ URL::asset('images/icon_grxq.png') }}" alt="">个人兴趣分析</p>
                    <p class="font28 color35">个人潜能与个人兴趣最佳匹配点主要是从个人最具备的潜能和个人最感兴趣的领域中寻找最匹配的交集之处。本维度旨在寻找到个人既感兴趣又有潜能优势可以长远发展的领域。但若找不到最佳匹配点，建议以个人潜能为最重要的选择专业指标，因为个人潜能在高中生这一年龄阶段已定型且相对清晰，并且后天较难改变；但兴趣却具有不稳定性、可能会随着经历发生变化或者个人虽然感兴趣但并不具备相应的潜能，难以奠定成功的基础。</p>
                </div>
                <div class="radar" id="interest_grades"></div>
                <p class="font26 color35">
                    个人兴趣是专业投入度的基石，至少要做到不排斥，以下的
                    兴趣就是你基本不会排斥的前三类兴趣，有利于专业的选择。
                </p>

                @foreach($interest_grades as $key => $interest_grade)
                    @if($key < 3)
                <div class="interest">
                    <h1 class="emphasis"><i></i>{{ $interests[$interest_grade['interest_id']]['name'] }}</h1>
                    <p class="font26 color35">
                        主要表现在：
                    </p>
                    <p class="font26 color35">{{ $interests[$interest_grade['interest_id']]['detail'] }}
                    </p>
                    <p class="font26 color666">
                        合适的典型职业：
                    </p>

                    <p class="font26 color666">{{ $interests[$interest_grade['interest_id']]['career'] }}</p>
                </div>
                    @endif

                @endforeach



                <div>
                    <p class="font26 color35"><img class="one-img" src="{{ URL::asset('images/icon_ppd.png') }}" alt="">个人潜能与个人兴趣最佳匹配点解析</p>
                    <p class="font28 color35">个人短板是指个人最不具备、最欠缺的潜能，是你未来发展道路上应该避免选择的专业和避免从事的职业。长期在短板领域投入精力不仅会让自己承担更大的精神与心理压力，同时无疑是在用自己的短板与他人的优势做比拼，长此以往，会让人逐渐丧失信心，痛苦、挣扎、没有价值感等感觉会随之而来，更谈不上成功！建议：选择的专业和未来从事的职业尽量避开需要该潜能的领域。</p>
                </div>
                <div class="bar" id="shake"></div>
                <p class="font26 color35">
                    你的潜能和兴趣进行对比分析后，在专业选择的过程中能够
                    让你既有潜能的支撑匹配，同时又在兴趣方面也不会排斥的
                    匹配点如下：
                </p>

                @foreach($shake_grades as $key => $shake_grade)
                    @if($key < 3)
                <div class="shake">
                    <h1 class="emphasis"><i></i>{{ $shakes[$shake_grade['shake_id']]['name'] }}</h1>
                    <p class="font26 color35">
                        主要表现在：
                    </p>
                    <p class="font26 color35">{{ $shakes[$shake_grade['shake_id']]['description'] }}</p>

                </div>
                    @endif

                @endforeach

                <div>
                    <p class="font26 color35"><img class="one-img" src="{{ URL::asset('images/icon_tuijian.png') }}" alt="">个人高匹配度的专业推荐</p>
                    <p class="font28 color35">根据对个人的性格、天赋、行为模式、风格及兴趣等多维度的综合分析与印证，以下你最适合的、最能发挥优势、最容取得突出成就的专业推荐。</p>
                </div>
            </div>

        </div>
    </div>

    <div class="row-fluid zc">
        <div class="col-xs-12">
            <div class="major">
                <p class="font26 color35">-最佳专业匹配如下</p>
                @foreach($major_grades as $key => $major_grade)
                    @if($key < 20)
                <p class="font28 color35"><span class="code">{{ $majors[$major_grade['major_id']]['code'] }}</span><span class="school">{{ $majors[$major_grade['major_id']]['name'] }}</span></p>
                    @endif
                @endforeach
            </div>

            <div class="major">
                <p class="font26 color35">-尺有所长，寸有所短，选择专业应谨遵扬长避短，以下
                    是 <span class="zc-red">你最不适合、最不具备优势、应该避免选择的专业</span>：</p>
                @foreach(array_reverse($major_grades->toArray()) as $key => $major_grade)
                    @if($key < 20)
                        <p class="font28 color35"><span class="code">{{ $majors[$major_grade['major_id']]['code'] }}</span><span class="school">{{ $majors[$major_grade['major_id']]['name'] }}</span></p>
                    @endif
                @endforeach
            </div>


        </div>
        {{--<div>--}}
            {{--<p class="font26 color35"><img class="one-img" src="{{ URL::asset('images/icon_tuijian.png') }}" alt="">所推荐专业的详情与未来就业</p>--}}
            {{--<p class="font28 color35">-以下为个人最佳匹配的10个专业的详情与未来就业空间</p>--}}
        {{--</div>--}}
    </div>
</div>

<script src="{{ URL::asset('index.js') }}"></script>
</body>
</html>