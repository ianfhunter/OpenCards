$(document).ready(function(){
    // $.drop({ mode:"overlap" })
    $("#player-hand-container").drop("drop",function(){
        log("Card Returned to Hand")
    });

    $("#player-area").drop("drop",function(){
        log("Card Placed on board")
    });
    $("body").drop("drop",function(e){
        log("Card placed in invalid area")
        $(e.target).css("left","").css("top","")
    });

});