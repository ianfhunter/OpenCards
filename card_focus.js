$(document).ready(function(){
    $(".trapezoid").hover(function(){
        $(this).addClass('gainFocus');
    },function(){
        $(this).removeClass('gainFocus');
    });

    $(document).on('click', '.trapezoid', function (e) {
  console.log("PRESSED");   
        nImg = $(this).css("background-image")
        nImg = nImg.replace('url(','').replace(')','');
        console.log(nImg);
        console.log($("#focus-card").attr("src"));
        $("#focus-card").attr("src",nImg);
    });


});
