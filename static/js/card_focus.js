function reload_hover_click_effects(){
       $(".trapezoid").hover(function(){
        $(this).addClass('gainFocus');
    },function(){
        $(this).removeClass('gainFocus');
    });

    $(document).on('click', '.trapezoid', function (e) {
        nImg = $(this).css("background-image")
        nImg = nImg.replace('url(','').replace(')','');

        // Get Details

        //Enlarge existing image
        $("#focus-card").attr("src",nImg);
        //Get meta-entry
        which_card = ($(this).attr('id')).replace("card-","");
        console.log(which_card);

        $("#focus-description").text(card_names[which_card]) //(card_names[parseInt(which_card)]);
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
