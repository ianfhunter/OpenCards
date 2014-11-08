<html>
<head>           
	<link rel="stylesheet" type="text/css" href="static/css/normalize.css">
	<link rel="stylesheet" type="text/css" href="static/css/main.css">
	<script src="static/js/jquery-2.1.1.min.js"></script>
	<script src="static/js/jquery-ui.min.js"></script>
	<script src="static/js/utils.js"></script>

</head>
	<body>
		<div id="mega-container">
			<div id="temp" style="display:none">
				<!-- For passing data from the backend to Javascript -->
				<script> 
					window.player_deck = jQuery.parseJSON('{{!player_deck}}'); 
					window.opponent_deck = jQuery.parseJSON('{{!opponent_deck}}');
					window.game_cards = window.player_deck.concat(window.opponent_deck);
					window.player_hand = []; 
					window.opponent_hand = [];
				</script>
			</div>
			<div id="menubar">
				<a href="create/">Add Card [Temp Option]</a>
			    <a href="#">Load Deck</a>
			    <a href="#">Find Player</a> 
			    <a href="#">Guide</a>
			    <a href="#">Setup</a>
			</div>

			<div id="focus-card-container">
				<img id="focus-card" src="static/images/nocard.jpg" />
				<h3 id="focus-title"> No Card Selected </h3>
				<p id="focus-element"></p>
				<p id="focus-type"></p>
				<p id="focus-subtype"></p>
				Level <h3 id="focus-level">  </h3>
				Att:<h3 id="focus-attack"> </h3>
				Def:<h3 id="focus-defence">  </h3>
				<p id="focus-description"></p>

				<div id="focus-content">
					<!-- <div id="ability">
						<h4> Ability #1: </h4>
						<a href="#">Magic Sparkle Attack</a>
						<text>A powerful Water-based attack -5NRG 20DMG</text>
						<br /> -->
				</div>
			</div>
 
			<div id="playarea">
				<div id="opponent-hand-container">
					<div class="hand">
						<div class="trapezoid" style="background-image: url('static/images/cardback.png');"></div>
						<div class="trapezoid" style="background-image: url('static/images/cardback.png');"></div>
						<div class="trapezoid" style="background-image: url('static/images/cardback.png');"></div>
						<div class="trapezoid" style="background-image: url('static/images/cardback.png');"></div>
						<div class="trapezoid" style="background-image: url('static/images/cardback.png');"></div>
					</div>
					<div class="turn"> 
						<!-- TODO: Change this to use turn amount from rules.json -->
						<input type="range" min="1" max="5" value="1" disabled="true" />
					</div>
				</div> 
				<div id="board">
					<div id="player-deck-area">
						<div id="player-deck" class="trapezoid" style="background-image: url('static/images/emptydeck.jpg');"></div>
					</div>
					<div id="play-area">
						<div id="opponent-area"></div>
						<div id="player-area"></div>
					</div>
					<div id="opponent-deck-area">
						<div class="trapezoid" style="background-image: url('static/images/emptydeck.jpg');"></div>
					</div>
				</div>
				<div id="player-hand-container">
					<div class="turn"> 
						<input type="range" min="1" max="5" value="1" disabled="true" />
						<button type="button" onclick="advanceTurn()">Advance Stage</button>
						<button type="button" onclick="draw_cards(1)">Draw Card</button>
					</div>
					<div class="hand">
						<!--Dynamically Loaded-->
					</div>
				</div>
				
			</div>
 



			<div id="player-stat-container">
				<div id="statsheet-container">
					<div class="statsheet">
						<img id="opponent-img" src="static/images/avatar1.jpg" />
						<h3> Opponent_Name </h3>
						<table>
							<tr>
								<td>
									<h4>Wins </h4>23</div><br />
								</td>
								<td>
									<h4>Losses </h4>12</div><br />
								</td>
							</tr>
						</table>
					</div>
					<hr />
					<div class="statsheet">
						<img id="opponent-img" src="static/images/avatar2.png" />
						<h3> Player_Name </h3>
						<table>
							<tr>
								<td>
									<h4>Wins </h4>3</div><br />
								</td>
								<td>
									<h4>Losses </h4>1</div><br />
								</td>
							</tr>
						</table>
					</div>
					<hr/>
				</div>
					<textarea id="logcontainer" cols="30">
This is the log. 
It has lots of useful information
10:20:43> Player Drew 2 Cards
10:20:42> Player Drew 2 Cards
10:20:42> Player Drew 2 Cards
10:20:42> Player Drew 2 Cards
10:20:42> Player Drew 2 Cards
10:20:42> Player Drew 2 Cards
10:20:42> Player Drew 2 Cards
10:20:42> Player Drew 2 Cards
10:20:42> Player Drew 2 Cards
10:20:42> Player Drew 2 Cards
10:20:41> Player Drew 2 Cards
					</textarea>
			</div>
		</div>
			<!-- Load scripts at bottom of page for speedier loading of page and avoiding non-built conflicts -->
			<script src="static/js/card_focus.js"></script>
			<script src="static/js/load_game.js"></script>
			<script src="static/js/movement.js"></script>
	</body>
</html>
