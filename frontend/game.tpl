<html>
<head>           
	<link rel="stylesheet" type="text/css" href="static/css/normalize.css">
	<link rel="stylesheet" type="text/css" href="static/css/main.css">
	<script src="static/js/jquery-2.1.1.min.js"></script>
</head>
	<body>
		<div id="temp" style="display:none">
			<!-- For passing data from the backend to Javascript -->
			<script> var dealt_hand = jQuery.parseJSON('{{!card_covers}}'); </script>
		</div>
		<div id="menubar">
		    <a href="#">Load Deck</a>
		    <a href="#">Find Player</a> 
		    <a href="#">Guide</a>
		    <a href="#">Setup</a>
		</div>
		<div id="opponent-hand-container">
			<div class="hand">
				<div class="trapezoid" style="background-image: url('static/images/cardback.png');"></div>
				<div class="trapezoid" style="background-image: url('static/images/cardback.png');"></div>
				<div class="trapezoid" style="background-image: url('static/images/cardback.png');"></div>
				<div class="trapezoid" style="background-image: url('static/images/cardback.png');"></div>
				<div class="trapezoid" style="background-image: url('static/images/cardback.png');"></div>
			</div>
			<div class="turn"> 
				<input type="range" min="1" max="5" value="1" />
			</div>
		</div>
		<div id="player-hand-container">
			<div class="turn"> 
				<input type="range" min="1" max="5" value="1" />
				<button type="button">Advance Stage</button>
			</div>
			<div class="hand">
				<!-- <div class="trapezoid" style="background-image: url('static/images/card6.jpg');"></div> -->
<!-- 				<div class="trapezoid" style="background-image: url('static/images/card7.jpg');"></div>
 -->				<!-- <div class="trapezoid" style="background-image: url('static/images/card8.jpg');"></div> -->
				<!-- <div class="trapezoid" style="background-image: url('static/images/card9.jpg');"></div> -->
				<!-- <div class="trapezoid" style="background-image: url('static/images/card10.png');"></div> -->
			</div>
		</div>

		<div id="focus-card-container">
			<img id="focus-card" src="static/images/nocard.jpg" />
			<h3> No Card Selected </h3>
			<div id="focus-content">
				<!-- <div id="ability">
					<h4> Ability #1: </h4>
					<a href="#">Magic Sparkle Attack</a>
					<text>A powerful Water-based attack -5NRG 20DMG</text>
					<br />
				</div> -->
		</div>
		<div id="player-stat-container">
			<div class="statsheet">
				<img id="opponent-img" src="static/images/profile.jpg" />
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
				<img id="opponent-img" src="static/images/profile.png" />
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
			<div>
				<textarea rows="10" cols="30">
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
	</body>
</html>
