@extends('home.layouts')
@section('content')
    <!-- 高中生报考一对一专家咨询服务 -->
    <section class="bk-server-fw">
        <div class="bk-title"></div>
        <div class="txt-server-art">
            <p> 通过对高中生个人的交流，帮助高中生深入剖析自己的优势、兴趣、动机及未来职业发展；通过对父母的交流，解析父母对孩子的期望，侧面印证孩子的性格、优势、劣势等特点；最终根据全面信息综合评价，给出具个性化的专业解决方案。</p>
        </div>
        <div class="server-nr">
            <h3 class="server-txt">服务内容</h3>
            <div class="nr-lan-sec">
                <div class="lt-nr">
                   <img src="{{asset('/images/pc/WechatIMG8.jpeg')}}" height="100%"/>
                </div>
                <div style=""></div>
                <div class="rt-nr">
                    <h2>高中生专业测评体验版</h2>
                    <p class="h2-txt">体验版</p>
                    <div class="txt-ha-box">
                        <div>
                            <p>高中生性格深入解析</p>
                            <p>优劣势深入解析</p>
                            <p>个人潜能分析</p>
                        </div>
                        <a class="txt-hx"></a>
                        <div>
                            <p>适合专业推荐</p>
                            <p>适合专业匹配度解析</p>

                        </div>
                        <a class="txt-hx"></a>
                        <div>
                            <p>专业从业方向 </p>
                            <p>个人短板解析</p>

                        </div>
                        <a class="txt-hx"></a>
                        <div>
                            <p>职业发展解析</p>
                            <p>就业空间</p>

                        </div>
                    </div>


                </div>

            </div>
            <div class="bn-con">
                <input type="button" value="点击获取解决方法">
            </div>
        </div>
    </section>
    <!-- 高级服务-高中生报考测评服务+专属专家咨询服务 -->
    <section class="large-js-cp">
        <div class="large-title"></div>
        <div class="txt-fb">
            <p> 通过对高中生个人的交流，帮助高中生深入剖析自己的优势、兴趣、动机及未来职业发展；通过对父母的交流，解析父母对孩子的期望，侧面印证孩子的性格、优势、劣势等特点；最终根据全面信息综合评价，给出具个性化的专业解决方案。</p>
        </div>
        <div class="server-nr">
            <h3 class="server-txt">服务内容</h3>
            <div class="nr-lan-sec">
                <div class="lt-nr">
                    <img src="{{asset('/images/pc/WechatIMG7.jpeg')}}" height="100%"/>
                </div>
                <div style=""></div>
                <div class="rt-nr">
                    <h2>高中生专业测评+一对一咨询服务</h2>
                    <div class="txt-ha-box">
                        <div>
                            <p>高中生性格深入解析</p>
                            <p>优劣势深入解析</p>
                            <p>职场动机深入解析</p>
                        </div>
                        <a class="txt-hx"></a>
                        <div>
                            <p>适合专业推荐</p>
                            <p>适合专业所开设院校推荐</p>
                            <p>专业介绍</p>
                        </div>
                        <a class="txt-hx"></a>
                        <div>
                            <p>专业从业方向 </p>
                            <p>专业课程设置</p>
                            <p>院校介绍及背景实力</p>
                        </div>
                        <a class="txt-hx"></a>
                        <div>
                            <p>院系设置</p>
                            <p>录取规则</p>
                            <p>未来就业趋势等</p>
                        </div>
                    </div>


                </div>

            </div>

            <div class="bn-con">
                <input type="button" value="点击咨询高级服务">
            </div>
        </div>
    </section>
    <!-- 金牌人才测评专家组 -->
    <section class="jp-js-zj">
        <div class="jp-title"></div>
        <div class="jp-nr">
            <div>
                <div class="jp-zj">
                    <img src="{{asset('/images/pc/wang.jpg')}}" alt="">
                </div>
                <div class="jp-jianjie">
                    <h3>王荣娜+人才测评专家</h3>
                    <p>专注人才甄选与评鉴十年
                        帮助高中生选择专业3万人以上
                        面试、评估人才胜任能力、人才盘点人数8万人以上  
                         </p>
                    <p>
                        帮职场人员做职业定位12万人以上，线上线下授课300次以上
                        为上市企业、大中小企业做人力资源系统咨询项目190家以上
                        服务的上市企业、大中小企业超过3400家  
                    </p>
                </div>
            </div>
            <div>
                <div class="jp-zj">
                    <img src="{{asset('/images/pc/zhao.jpg')}}" alt="">
                </div>
                <div class="jp-jianjie">
                    <h3>赵会全+人才测评专家</h3>
                    <p>基石测评创始人 CEO
                        原北京慧才智库教育科技有限公司（C8HR）
                        联合创始人、测评技术负责人、咨询师、讲师</p>
                    <p>人才性格测评、评鉴专家
                        人才标准、素质模型构建师
                        人力资源体系构建高级咨询师
                        国家人保部CETTIC国家新职业技能培训指定授课老师</p>
                </div>
            </div>
        </div>
    </section>
    <!-- 扫码小程序立即体验 -->
    <section class="js-ty">
        <img src="{{asset('images/pc/cp/ty_03.png')}}" alt="">
    </section>
    <div class="wechat-modal">
        <div class="pauseimg"></div>
        <img src="{{asset('/images/pc/weChat_query.jpg')}}" class="">
    </div>
@endsection
@section('script')
    <script>
        $(function () {
            $('.bn-con input[type=button]').click(function() {
                $('.wechat-modal').show();
                $('.mask').show();
            })

            $(".pauseimg").click(function () {
                $('.wechat-modal').hide();
                $('.mask').hide();

            })
        })
    </script>
@endsection