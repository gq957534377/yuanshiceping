$(function() {
	//导航联动
	$('.left_nav>li').click(function() {
		var ind = $(this).index();
		console.log(ind)
		var indexHtml=$('.navIndex').eq(ind).find('.report_content_title').text();
		scrollTo($('.navIndex').eq(ind), 500);
		$('.navTitle').html(indexHtml);
	})
	//滚动方法
	function scrollTo(ele, speed) {
		if(!speed) speed = 300;
		if(!ele) {
			$("html,body").animate({
				scrollTop: 0
			}, speed);
		} else {
			if(ele.length > 0) $("html,body").animate({
				scrollTop: $(ele).offset().top - 30
				
			}, speed);
			
		}
		return false;
	}
	
	//手机滑动事件
	window.onscroll=function(){
		$('.navIndex').each(function(index,item){
			var scrollHeight=$(item).offset().top;
			var indexHtml=$(item).find('.report_content_title').text();
			if($(window).scrollTop()>=scrollHeight){
				$('.navTitle').html(indexHtml);
			}
			if($(window).scrollTop()<=$(window).height()){
				$('.navTitle').html('首页');
			}
		})
	}
	
	//导航动画效果
	$('.switchBtn').click(function() {
		$('.left_nav').slideDown();
		$(this).removeClass('icon-zhankai').addClass('icon-shouqiicon')
	}, function() {
		$('.left_nav').slideUp();
		$(this).removeClass('icon-shouqiicon').addClass('icon-zhankai')
	});

	//点击查看
    var top = $('.major_tops').offset().top;
    //点击查看
    $('.click_show').click(function() {
        $('.list_report_p').toggleClass('show');
        $(this).children('span').toggleClass('top_arrow');
        if($(this).children('span').hasClass("top_arrow")) {
            $(this).children('p').html('点击收起');
        } else{
            $(this).children('p').html('点击查看全文');
        }
        $('body').scrollTop(top-200);
    });
	//我的优势潜能选项卡
	$('.personal_potential_tab>li').click(function() {
		var _index = $(this).index();
		$(this).addClass('bg').siblings().removeClass('bg');
		$('.personal_potential_tab_list').eq(_index).addClass('bg').siblings('.personal_potential_tab_list').removeClass('bg')
		$('.personal_potential_tab_list').eq(_index).slideDown()
	})
	//我的劣势潜能选项卡
	$('.inferiority_ul>li').click(function() {
		var _index = $(this).index();
		$(this).addClass('bg').siblings().removeClass('bg');
		$('.inferiority_list').eq(_index).addClass('bg').siblings('.inferiority_list').removeClass('bg')
	})
	//优势兴趣解析选项卡
	$('.personal_potential_interest_ul>li').click(function() {
		var _index = $(this).index();
		$(this).addClass('bg').siblings().removeClass('bg');
		$('.personal_potential_interest_div').eq(_index).addClass('bg').siblings('.personal_potential_interest_div').removeClass('bg')
	})
	//如下为您的最佳匹配点选项卡
	$('.mate_report_ul>li').click(function() {
		var _index = $(this).index();
		$(this).addClass('bg').siblings().removeClass('bg');
		$('.mate_report_div').eq(_index).addClass('bg').siblings('.mate_report_div').removeClass('bg')
	})

	//查看案例
	$('.lookCase').click(function() {
		$('.mark').show()
	})
	//查看案例关闭弹框
	$('.closeBtn').click(function() {
		$('.mark').hide()
	})
	//轮播
	var swiper = new Swiper('.swiper-container', {
		spaceBetween: 30,
		centeredSlides: true,
		autoplay: {
			delay: 2500,
			disableOnInteraction: false,
		},

		navigation: {
			nextEl: '.swiper-button-next',
			prevEl: '.swiper-button-prev',
		},
	});

	//进度条
    $('.circlechart').circlechart();

})