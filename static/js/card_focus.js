function reload_hover_click_effects(){
       $(".trapezoid").hover(function(){
        $(this).addClass('gainFocus');
    },function(){
        $(this).removeClass('gainFocus');
    });

    $(document).on('click', '.trapezoid', function (e) {
        nImg = $(this).css("background-image")
        nImg = nImg.replace('url(','').replace(')','');
        $("#focus-card").attr("src",nImg);
    }); 
} 
$(document).ready(function(){
    $(".trapezoid").hover(function(){
        $(this).addClass('gainFocus');
    },function(){
        $(this).removeClass('gainFocus');
    });

    $(document).on('click', '.trapezoid', function (e) {
        nImg = $(this).css("background-image")
        nImg = nImg.replace('url(','').replace(')','');
        $("#focus-card").attr("src",nImg);
    });

});
