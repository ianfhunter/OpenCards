function uniqueRandomNumbers(amount,range){
  var arr = []
  while(arr.length < amount){
    var randomnumber=Math.ceil(Math.random()*range) - 1
    var found=false;
    for(var i=0;i<arr.length;i++){
      if(arr[i]==randomnumber){found=true;break}
    }
    if(!found)arr[arr.length]=randomnumber;
  }
  return arr;
}

function advanceTurn(){
  slider = $("#player-hand-container .turn input");
  new_turn = parseInt(slider.val())+1;
  max_turn = parseInt(slider.attr("max"));
  if (new_turn <= max_turn){
    slider.val(new_turn);    
  }else{
      slider.val(0);
  }
  console.log("HI");
}

//Returns False if out of cards (Beware of drawing multiple!)
function draw_cards(amount){
  for (i = 0; i != amount; i++){
    //if no cards, do nothing
    if(window.player_deck.length == 0){
      $("#player-deck").css("background-image","url('static/images/emptydeck.jpg')");
      return false
    }

    //add in variable
    new_card = window.player_deck.pop();
    window.player_hand.push(new_card);

    $("#player-hand-container .hand").append("<div class='trapezoid' style=\"background-image: url('data/yugioh/cards/img/"+new_card["Image"]+"');opacity:0\"></div>");
    $("#player-hand-container .hand .trapezoid").animate({opacity: 1}, 800);
  }
}

function shuffle_cards(cards){
  //if dict
  //if array


    // random_card = uniqueRandomNumbers(5,Object.keys(dealt_hand).length); 
    // for(i = 0; i != 5;i++){
    //     this_card = dealt_hand[random_card[i]];


    //     card_path = dealt_hand[dealt[i]].replace("/var/www/OpenCards/","");                        //Get relative backend path
    //     card_id = card_path.replace("data/yugioh/cards/img/","").replace(".jpg","")         //Get unique id for card
    //     new_card = "<div class='trapezoid' id='card-"+card_id+"' style='background-image: url("+card_path+");'></div>";
    //     $("#player-hand-container .hand").append(new_card) ;     
    //     window.player_hand.append(card_id);   
    // }

  return cards
}

function refresh_css(){
    var links = document.getElementsByTagName("link");

    for (var x in links) {
        var link = links[x];
    }
} 