<html>
<head>           
	<link rel="stylesheet" type="text/css" href="static/css/normalize.css">
	<link rel="stylesheet" type="text/css" href="static/css/main.css">
</head>
	<body>
		<div id="menubar">
		    <a href="#">Load Deck</a>
		    <a href="#">Find Player</a>
		    <a href="#">Guide</a>
		    <a href="#">Setup</a>
		</div>
		<div id="opponent-hand-container">
			<div class="hand">
				<div class="trapezoid"></div>
				<div class="trapezoid"></div>
				<div class="trapezoid"></div>
				<div class="trapezoid"></div>
				<div class="trapezoid"></div>
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
				<div class="trapezoid"></div>
				<div class="trapezoid"></div>
				<div class="trapezoid"></div>
				<div class="trapezoid"></div>
				<div class="trapezoid"></div>
			</div>
		</div>

		<div id="focus-card-container">
			<img id="focus-card" src="static/images/card.jpg" />
			<h3> {{card_title }} </h3>
			<div id="focus-content">
				<div id="ability">
					<h4> Ability #1: </h4>
					<a href="#">Magic Sparkle Attack</a>
					<text>A powerful Water-based attack -5NRG 20DMG</text>
					<br />
				</div>
				<div id="ability">
					<h4> Ability #2: </h4>
					<a href="#">Magic Sparkle Attack</a>
					<text>A powerful Water-based attack -5NRG 20DMG</text>
					<br />
				</div>
				<div id="ability">
					<h4> Ability #3: </h4>
					<a href="#">Magic Sparkle Attack</a>
					<text>A powerful Water-based attack -5NRG 20DMG</text>
					<br />
				</div>
				<div id="ability">
					<h4> Ability #4: </h4>
					<a href="#">Magic Sparkle Attack</a>
					<text>A powerful Water-based attack -5NRG 20DMG</text>
					<br />
				</div>
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
		</div>
		
	</body>
</html>
