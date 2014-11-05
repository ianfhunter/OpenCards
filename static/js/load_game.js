function refresh_css(){
    var links = document.getElementsByTagName("link");

    for (var x in links) {
        var link = links[x];

        // if (link.getAttribute("type").indexOf("css") > -1) {
        //     link.href = link.href + "?id=" + new Date().getMilliseconds();
        // }
    }
} 
$(document).ready(function(){
    //TODO: Take Hand length from Rules Files
    for(i = 0; i != 5;i++){
        card_path = dealt_hand[i].replace("/var/www/OpenCards/","");                        //Get relative backend path
        card_id = card_path.replace("data/yugioh/cards/img/","").replace(".jpg","")         //Get unique id for card
        new_card = "<div class='trapezoid' id='card-"+card_id+"' style='background-image: url("+card_path+");'></div>";
        $("#player-hand-container .hand").append(new_card) ;        
    }
    refresh_css();
    reload_hover_click_effects();
}) 