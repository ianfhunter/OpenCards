$(document).ready(function(){
    //TODO: Take Hand length from Rules Files
    var first_draw_size = 5;

    //setup deck
    shuffle_cards(window.player_deck);
    $("#player-deck").css("background-image","url('static/images/deck.png')");

    draw_cards(first_draw_size);

    refresh_css();
    reload_hover_click_effects();
})