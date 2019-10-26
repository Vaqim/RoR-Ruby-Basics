#gem code

class MyGem
	def initialize
		@f = File.new("index.html", "w+")	
	end

	attr_accessor :name
	attr_accessor :mood
	attr_accessor :eat
	attr_accessor :health
	attr_accessor :wsleep
	attr_accessor :dirty
	attr_accessor :f
	
	

	def html_creator
		if @name, @mood, @eat, @health, @wsleep, @dirty != 0
			@f.open("index.html", "w+")
			@f.write("
				<!DOCTYPE html>
				<html lang="en">
				<head>
					<meta charset="UTF-8">
					<title>Test</title>
					<link rel="stylesheet" href="style.css">
				</head>
				<body>
					<header>
						<h1>Tamagotchi</h1>
					</header>
					<article>
						<h2>Pet status</h2>
						<div class="content">
							<ul>
								<li id="name">#{@name}</li>
								<li id="health">#{@health}</li>
								<li id="eat">#{@eat}</li>
								<li id="mood">#{@mood}</li>
								<li id="dirty">#{@dirty}</li>
								<li id="wsleep">#{@wsleep}</li>
								<li id="asleep">#{@asleep}</li>
							</ul>
							<div class="button_block">
								<input type="button" id="heal" value="Heal">
								<input type="button" id="food" value="Food">
								<input type="button" id="play" value="Play">
								<input type="button" id="wash" value="Wash">
								<input type="button" id="sleep" value="Sleep">
								<input type="button" id="look" value="Look">
							</div>
						</div>
						<p class="img">&#128568;</p>
					</article>
					<footer>
						<p>Powered by Vaqim</p>
						<p>Contacts: 
							<a href="mailto:vadimser1355@gmail.com">vadimser1355@gmail.com</a><br>
							Skype: live:vadimser1355
						</p>
					</footer>
				</body>
				</html>
				", "w+")
		end
	end
end