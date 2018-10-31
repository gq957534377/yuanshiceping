(function () {

    //页面加载完之后让进入测试按钮变量
    $(window).on('load', function () {
        //10秒倒计时
        var timer= setInterval(function(){
            var counts=$('.count').html();
            counts--;
            $('.count').html(counts);

            if(counts<=0){
                clearInterval(timer);
                $('.star_btn_last').addClass('bg');
                $('.star_btn_last').html(enter_btn_html);
            }
            $('.star_btn_last.bg').on('touchstart',function(){
                end_mask();
            })
        },1000);
    });


    //倒计时
    var timer = function () {
        var time=$('.timeBox>span').html();
        time--;
        $('.timeBox>span').html(time);
        if(time <= 9){
            $('.timeBox>span').html('0'+time);
        }

        if(time < 1){
            $('.timeBox>span').html('00');
            stopTimer();
        }

    };

    // 停止答题计时器
    var stopTimer = function () {
        mui.confirm('已超时,答题进度已保存,是否继续答题?', '提醒', ['否', '是'], function (e) {
            if (e.index == 1) {
                resetTimer();
            } else {
                $('.test-option').addClass('check');
                $('.option>li').removeClass('bg');
                // window.location.href = ERR_JUMP;
            }
        });
        clearInterval(interval);
    };
    // 重置计时器
    var resetTimer = function () {
        $('.timeBox>span').html('30');
        clearInterval(interval);
        interval = setInterval(timer, 1000);
    };



    // 过程界面结束
    var end_mask = function () {
        //走到答题页
        $('.answerFlow').hide();
        $('.answer').show();
        if (CURRENT_CATEGORY_ID == 3) {
            if (course == 1){
                $('.answer').show();
                interval = setInterval(timer, 1000);
            } else {
                //弹框题目提示弹框
                $('.title_mark').show();
            }
        } else {
            interval = setInterval(timer, 1000);
        }
    };

    // 过程界面开始
    var start_mask = function () {
        $('.answerFlow').show();
        $('.answer').hide();
        if (CURRENT_CATEGORY_ID == 3) {
            $('.title_mark').hide();
        }
    };

    //******************  C类题 S  *******************//

    $('.title_mark .next_btn').on('touchstart',function(){
        $('.title_mark').hide();
        $('.option_mark').show();
    });
    //选项题目提示弹框
    $('.option_mark .answer_option>li').on('touchstart',function(){
        $('.option_mark').hide();
        $('.star_mark').show()
    });
    //正式答题
    $('.star_mark .next_btn').on('touchstart',function(){
        $('.star_mark').hide();
        $('.answer_three').show();
        interval = setInterval(timer, 1000);
    });
    //******************  C类题 E  *******************//

    //答题页面选项点击的时候增加类名
    $(document).on('click', '.option>li', function () {
        $(this).addClass('bg').siblings().removeClass('bg');
    });

    // 防止mui弹窗 遮罩层一直display:block
    $(document).on('click','.mui-popup-backdrop',function () {
        $(this).hide();
    });

    function getQuestions(url, data = {'user': user,'order_num': order}, method = 'GET') {
        $.ajax({
            url: url,
            data: data,
            type: method,
            dataType: 'json',
            async: false,
            beforeSend: function (request) {
                request.setRequestHeader("X-CSRF-TOKEN", $('meta[name="csrf-token"]').attr('content'));
            },
            success: function (data) {
                switch (data.message) {
                    case "200":
                        if (data.data.sort == 1 || (course == 1 && courseFlag == true)) {
                            start_mask();
                            again = false;
                            courseFlag = false;
                        }
                        if (CURRENT_CATEGORY_ID == 3) {
                            $('.answerContent').html(questionsHtmlC(data.data));
                        } else if(CURRENT_CATEGORY_ID == 2) {
                            $('.answerContent').html(questionsHtmlB(data.data));
                        }else {
                            $('.answerContent').html(questionsHtml(data.data));
                        }

                        checkOption();
                        if (again === true) {
                            interval = setInterval(timer, 1000);
                            again = false;
                        }
                        break;
                    case 'report':
                        window.location.href = '/mobile/report?order_number=' + data.data.order_number + '&user=' + user;
                        break;
                }
            },
            error: function (e) {
                mui.alert('请求失败,请刷新重试!');
            },
            compvare: function (XMLHttpRequest, status) { //请求完成后最终执行参数
                if (status == 'timeout') {//超时,status还有success,error等值的情况
                    mui.alert('请求失败,请刷新重试!');
                }
            }
        });
    }

    getQuestions('/mobile/getQuestions');

    // 答案选择
    function checkOption() {
        $(document).on('touchstart', '.check', function () {

            $('.check').removeClass('check');
            if ($('.timeBox>span').html() <= 0) {
                mui.confirm('已超时,答题进度已保存,是否继续答题?', '提醒', ['否', '是'], function (e) {
                    if (e.index == 1) {
                        $('.test-option').addClass('check').removeClass('bg');
                        resetTimer();
                    } else {
                        $('.test-option').addClass('check').removeClass('bg');
                    }
                });
                return false;
            }

            $(this).addClass('bg');
            if ($('.timeBox>span').html() > SUBJECT_SPEED) {
                popupNumber++;
                mui.alert('答题速度太快,稍微慢点!', '提醒', function (e) {
                    if (e.index == 0) {
                        $('.test-option').addClass('check').removeClass('bg');
                        if (popupNumber >= 3) {
                            $('.answer_two_mark3').show();
                            clearInterval(interval);
                        }
                    }
                });
                return false;
            }
            $(this).className = "test-option test-check";
            var selected = $(this).data('value');  // 选择答案
            var category_id = $(this).data('category'); // 题类ID
            var question_id = $(this).data('question'); // 题ID
            var sort = $(this).data('sort'); // 题序号
            var order_number = order; // 用户做题区分代号
            var data = {
                'member_id': user,
                'selected': selected,
                'sort': sort,
                'category_id': category_id,
                'question_id': question_id,
                'order_number': order_number
            };
            submit('/mobile/answer', data);
        })

    }


    // 提交答案
    function submit(url, datas, method = 'POST') {
        $.ajax({
            url: url,
            data: datas,
            type: method,
            beforeSend: function (request) {
                request.setRequestHeader("X-CSRF-TOKEN", $('meta[name="csrf-token"]').attr('content'));
            },
            success: function (data) {
                if (data.message == 'success') {
                    if (data.data.category_id == CURRENT_CATEGORY_ID && data.data.sort == SUBJECT_COUNT) {

                        if (CURRENT_CATEGORY_ID == 3) {
                            // 跳转到查看报告
                            window.location.href = '/mobile/report?order_number=' + data.data.order_number + '&user=' + user;
                            return false;
                        } else {
                            // 跳转到第a,b类题
                            window.location.href = FINISH_JUMP;
                            return false;
                        }

                        return false;
                    }
                    setTimeout(function () {
                        getQuestions('/mobile/getQuestions');
                        resetTimer();
                    }, 300);

                } else {
                    mui.alert('请求失败,请刷新重试!');
                }
            },
            error: function (e) {
                $(this).className = "testb-option";
                mui.alert('请求失败,请刷新重试!');
            },
            compvare: function (XMLHttpRequest, status) { //请求完成后最终执行参数
                if (status == 'timeout') {//超时,status还有success,error等值的情况
                    ajaxTimeOut.abort(); //取消请求
                    mui.alert('请求失败,请刷新重试!');
                }
            }
        });
    }

    // 题目遍历
    function questionsHtml(data) {
        var html = '';
        html +=
            "<p class=\"answer_num\"> "+data.sort+"/<span class=\"cur_num\">"+SUBJECT_COUNT+"</span></p>" +
            "<p class=\"answer_title\">"+data.title+"</p>" +
            "<ul class=\"answer_option\">" +
            "    <li style='cursor:pointer;' class='check test-option' data-value='1' data-sort="+data.sort+" data-category="+data.category_id+" data-question="+data.sub_questions[0].question_id+"><p>"+data.sub_questions[0].title+"</p> <span></span></li>" +
            "    <li style='cursor:pointer;' class='check test-option' data-value='2' data-sort="+data.sort+" data-category="+data.category_id+" data-question="+data.sub_questions[1].question_id+"><p>"+data.sub_questions[1].title+"</p> <span></span></li>" +
            "</ul>";

        return html;
    }

    function questionsHtmlB(data) {
        var html = '';
        html +=
            "<p class=\"answer_num\"> "+data.sort+"/<span class=\"cur_num\">"+SUBJECT_COUNT+"</span></p>" +
            "                    <p class=\"answer_title\">"+data.title+"</p>" +
            "                    <ul class=\"answer_option\">" +
            "    <li style='cursor:pointer;' class='check test-option' data-value='1' data-sort="+data.sort+" data-category="+data.category_id+" data-question="+data.sub_questions[0].question_id+"><p>"+data.sub_questions[0].title+"</p> <span class='answer_list_three'></span></li>" +
            "    <li style='cursor:pointer;' class='check test-option' data-value='2' data-sort="+data.sort+" data-category="+data.category_id+" data-question="+data.sub_questions[0].question_id+"><p>"+data.sub_questions[1].title+"</p> <span class='answer_list_three'></span></li>" +
            "                    </ul>"
        return html;
    }

    // C类题html
    function questionsHtmlC(data) {
        var html = '';
        html +=
            "" +
            "<p class=\"answer_num\"> "+data.sort+"/<span class=\"cur_num\">"+SUBJECT_COUNT+"</span></p>" +
            "                    <ul class=\"answer_three_title\">" +
            "                        <li>" +
            "                            <p>A</p>" +
            "                            <p>" + data.sub_questions[0].title + "</p>" +
            "                        </li>" +
            "                        <li>" +
            "                            <p>B</p>" +
            "                            <p>" + data.sub_questions[1].title + "</p>" +
            "                        </li>" +
            "                    </ul>" +
            "                    <ul class=\"answer_option\">" +
            "        <li style='cursor:pointer;' class='check test-option' data-value='1' data-sort=" + data.sort + " data-category=" + data.category_id + " data-question=" + data.sub_questions[0].question_id + ">A 非常符合我 <span class='answer_list_three'></span></li>" +
            "        <li style='cursor:pointer;' class='check test-option' data-value='2' data-sort=" + data.sort + " data-category=" + data.category_id + " data-question=" + data.sub_questions[0].question_id + ">A 比较符合 <span class='answer_list_three'></span></li>" +
            "        <li style='cursor:pointer;' class='check test-option' data-value='3' data-sort=" + data.sort + " data-category=" + data.category_id + " data-question=" + data.sub_questions[0].question_id + ">中立 <span class='answer_list_three'></span></li>" +
            "        <li style='cursor:pointer;' class='check test-option' data-value='4' data-sort=" + data.sort + " data-category=" + data.category_id + " data-question=" + data.sub_questions[0].question_id + ">B 比较符合 <span class='answer_list_three'></span></li>" +
            "        <li style='cursor:pointer;' class='check test-option' data-value='5' data-sort=" + data.sort + " data-category=" + data.category_id + " data-question=" + data.sub_questions[0].question_id + ">B 非常符合我 <span class='answer_list_three'></span></li>" +
            "                    </ul>" +
            "                "
        return html;

    }

    //***********************适配华为
    if($(window).height()<=532){
        $('.flow_list .iconfont').css('font-size','1.6rem');
        $('.circle i').css('padding-top','0.5rem');
        $('.circle').css({'width': '2rem','height': '2rem'});
        $('.flow_list li .icon-progress-Dottedline-, .flow_list li .icon-progress-Dottedline-1').css('font-size','5rem')
        $('.flow_list li:nth-child(2)').css('top','2rem');
        $('.flow_list li:nth-child(3)').css('top','6rem')
        $('.flow_list li:nth-child(4)').css('top','8.5rem');
        $('.flow_list li:nth-child(5)').css('top','2rem');
        $('.flow_list li:nth-child(6)').css('top','5.5rem');
        $('.flow_list li:nth-child(7)').css('top','9rem');
    }
})();