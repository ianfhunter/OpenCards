$(document).ready(function(){
    window.on_board = false;
    window.in_hand = true;
    $( "#player-hand-container .hand .trapezoid" ).draggable({
        containment:"#playarea"
    });
    $("body").droppable({
        drop: function(event,ui){
            console.log(window.on_board)
            if(window.on_board == false && window.in_hand == false){
                console.log("HI");
                ui.draggable.animate({
                    top: "0px",
                    left: "0px"
                });                       
            }
            window.on_board = false;   
        }
    })
    $( "#board" ).droppable({
        out: function(){
            window.on_board=false;
        },
        over:function(){
            window.on_board=true
        }
    });
    $(".hand").droppable({
        out: function(){
            window.in_hand=false;
        },
        over:function(){
            window.in_hand=true
        },
        drop:function(event,ui){
            ui.draggable.animate({
                top: "0px",
                left: "0px"
            });
            window.in_hand=true;
        }
    })


})