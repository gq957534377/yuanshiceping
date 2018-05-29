$(function(){
    $(".nav a").click(function() {
        activity($(this));
    })
    $(".nav a").on("touchmove", function(event) {
        event.stopPropagation();
    });
    $(".switcher").click(function(){
        show();
    })

    function show() {
        $('.nav').show()
        $('.switcher').hide()
        var topnow = $(document).scrollTop();
        var active = null;
        $(".nav a").each(function(index, item) {
            var id = $(item).attr("href");
            var topset = $(id).offset();
            if(typeof topset != 'undefined') {
                var diff = topnow - topset.top;
                if(diff > 0) {
                    active = $(item);
                }
            }
        })
        if(active != null) {
           activity(active); 
        }
    }

    function activity(obj) {
        obj.siblings().removeClass("active");
        obj.addClass("active");
    }

    function hide() {
        $('.switcher').show()
        $('.nav').hide()
    }
    $("body").on("touchmove", function() {
        hide();
    })
    show()
})

