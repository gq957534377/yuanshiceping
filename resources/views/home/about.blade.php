@extends('home.layouts')
@section('content')
<!-- 关于我们 -->
<section class="js-about wx-12">
    <!-- 左侧菜单 -->
    <div class="js-menu" id="menu">
        <ul id="menu-js">
            <li>关于基石</li>
            <li>产品介绍</li>
            <li>基石背景</li>
            <li>公司理念</li>
            <li>联系我们</li>
        </ul>
    </div>
    <!-- 右侧内容 -->
    <div class="con-js" id="content">
        <ul id="js-con">
            <li id="#js" style="display: block">
                <div class="con-js-title">
                    <h3>关于基石</h3>
                </div>
                <div class="js-con-txt">
                    <p>
                        北京基石测评网络技术有限公司是一家专注于人才测评与评鉴，为高中生选择专业、职业规划、性格测评的科研型企业。<br/>
                        基石测评通过研究国内外性格测评技术并在国内研发应用12年以上，创始人团队在12年时间通过为世界500强、
                        国内知名企业、中小型等不同规模、不同发展阶段的企业做人才甄选与评鉴，
                        人才适岗度、胜任能力评估等人力资源系统咨询服务中积累了各行、各业、
                        各岗位的企业用人标准及能力素质模型。高中生的专业选择就是职场岗位的前身是人生重要的转折点，
                        基石测评通过240万以上人才库的模型统计，研发出应用于高中生专业选择的精准潜能测评，致力于帮助高中生深入认知自己、
                        发现自己、帮助他们选择最适合自己的专业，让他们在人生路上少走弯路，为高中生未来的成功奠定基石。
                    </p>
                </div>

            </li>
            <li id="js-bj">
                <div class="con-js-title">
                    <h3>产品介绍</h3>
                </div>
                <div class="js-con-txt">
                    <p>
                        以精密、科学的心理学数据和统计学结果为考生量体裁衣，规划专业方向。<br />
                        《基石高中生专业选择测评》通过对高中生性格、天赋、行为风格、兴趣等多维度精准分析，
                        利用各行、各业、各岗位的企业用人标准及能力素质模型的大数据精准匹配最能发挥其个人优势与潜能的专业，帮助高中生规划适合自己的职业方向。<br />
                        基石认为：“没有不能成就人得专业，只有选错专业得人”；<br />
                        “喜欢才愿投入，适合才能发展，持久才会成功！”<br />
                        选错专业的代价十分巨大，12年寒窗苦读，专业方向选错，功力一朝散尽！<br />

                        潜心专研12年，用12年的时间对企业用人标准及模型进行深入调研、统计与分析，不断验证人与岗位的匹配关系，用统计学来做心理学，而非闭门研究；用实践来检验真理，而非空想标准！！！
                        一切以应用、验证、实际为出发点，使高中生专业选择测评达到信度、效度、柔度的高度统一，为高考生规划最适合的专业。<br />

                        测评基于以下各大数据研究：<br />
                        1.6大类职业兴趣<br />
                        2.9大类潜能<br />
                        3.16类行为、职业风格<br />
                        4.28项人才素质模型<br />
                        5.34类个人天赋基因<br />
                        6.489类职业岗位优秀标杆模型<br />
                        7.587种大学专业研究分析<br />
                        8.240万人才标杆测评大数据<br />
                        9.6500家大中小企业人才测评、甄选、评鉴落地咨询<br />
                        “世界上没有完全相同的两片树叶”基石测评精准到即使20亿人做测评，也没有一个完全相同的人。这才是真正的测评！

                    </p>
                </div>
            </li>
            <li id="js-bj">
                <div class="con-js-title">
                    <h3>基石背景</h3>
                </div>
                <div class="js-con-txt">
                    <img src="{{asset('images/pc/beijing.png')}}">
                </div>
            </li>

            <li id="js-ln">
                <div class="con-js-title">
                    <h3>公司理念</h3>
                </div>
                <div class="js-con-txt">
                    <p> 1、基石测评愿景<br/>
                        助力人生，成为专业的前程指点专家<br/>
                        2、基石测评使命<br/>
                        以科学的方式帮助高中生照亮前程<br/>
                        3、基石测评价值观<br/>
                        真诚——真诚待人   诚信经营<br/>
                        专业——精耕细作   追求极致<br/>
                        服务——员工满意度  客户满意度<br/>
                        创新——新思维  新方法<br/>
                        4、基石测评人才观<br/>
                        忠诚、敬业、自动自发、内控、结果导向、合作、积极进取、感恩
                    </p>
                </div>
            </li>

            <li id="js-lx">
                <div class="con-js-title">
                    <h3>联系我们</h3>
                </div>
                <div class="js-con-txt">
                    <p>公司电话：
                        <a>400-101-9859</a>
                    </p>
                    <p>公司地址：
                        <a>北京市朝阳区立汤路188号北方明珠大厦1号楼2911室</a>
                    </p>
                    <p>公司邮箱：
                        <a>beijing@jishiceping.com</a>
                    </p>
                    <br />
                    <img src="{{asset('images/pc/map.jpeg')}}">
                </div>
            </li>
            <li class="clearfix"></li>
        </ul>

    </div>
    <div class="clearfix"></div>
</section>
<div class="clearfix"></div>
@endsection
@section('script')
    <script>
        $(function () {
            function desk(c, d) {
                for (var i = 0; i < c.length; i++) {
                    c[i].index = i;
                    c[i].onclick = function (e) {
                        for (var j = 0; j < c.length; j++) {
                            c[j].className = "";
                            d[j].style.display = "none";
                        }
                        this.className = "on";
                        d[this.index].style.display = "block";
                    }
                }
            }

            function tab(a, b) {
                var oLi = document.getElementById(a).getElementsByTagName('li');
                var oDiv = document.getElementById(b).getElementsByTagName('li');
                desk(oLi, oDiv);
            };
            tab('menu-js', 'js-con');
        })
    </script>
@endsection