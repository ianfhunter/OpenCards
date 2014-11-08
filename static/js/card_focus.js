function reload_hover_click_effects(){
       $(".trapezoid").hover(function(){
        $(this).addClass('gainFocus');
    },function(){
        $(this).removeClass('gainFocus');
    });

    $(document).on('click', '.trapezoid', function (e) {
        nImg = $(this).css("background-image")
        nImg = nImg.replace('url(','').replace(')','');
        id = nImg.replace("http://5.196.1.72:8080/data/yugioh/cards/img/","");


        for(i=0;i!=window.game_cards.length-1;i++){
            if(window.game_cards[i]["Image"]==id){
                focussed= window.game_cards[i];
                break;
            }
        }
        if(typeof focussed == 'undefined'){
            console.log("Not a viewable card");
            $("#focus-card").attr("src","static/images/nocard.png");
            $("#focus-title").text("No card Selected");
            $("#focus-attack").text("");
            $("#focus-defence").text("");
            $("#focus-description").text("");
            $("#focus-level").text("");
            $("#focus-element").text("");
            $("#focus-type").text("");
            $("#focus-subtype").text("");
        }else{
            $("#focus-card").attr("src","data/yugioh/cards/img/"+focussed["Image"]);
            $("#focus-title").text(focussed["Title"]);
            $("#focus-attack").text(focussed["Attack"]);
            $("#focus-defence").text(focussed["Defence"]);
            $("#focus-description").text(focussed["Description"]);
            $("#focus-level").text(focussed["Level"]);
            $("#focus-element").text(focussed["Element"]);
            $("#focus-type").text(focussed["Type"]);
            $("#focus-subtype").text(focussed["Subtype"]);
        }
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
