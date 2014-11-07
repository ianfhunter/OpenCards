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
            $("#focus-card").attr("src","static/images/nocard.jpg");
            $("#focussed-title").text("No card Selected");
            $("#focussed-attack").text("");
            $("#focussed-defence").text("");
            $("#focussed-description").text("");
            $("#focussed-level").text("");
            $("#focussed-element").text("");
            $("#focussed-type").text("");
            $("#focussed-subtype").text("");
        }else{
            $("#focus-card").attr("src","data/yugioh/cards/img/"+focussed["Image"]);
            $("#focussed-title").text(focussed["Title"]);
            $("#focussed-attack").text(focussed["Attack"]);
            $("#focussed-defence").text(focussed["Defence"]);
            $("#focussed-description").text(focussed["Description"]);
            $("#focussed-level").text(focussed["Level"]);
            $("#focussed-element").text(focussed["Element"]);
            $("#focussed-type").text(focussed["Type"]);
            $("#focussed-subtype").text(focussed["Subtype"]);
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
