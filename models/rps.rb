
class Game 
	attr_accessor :weapon, :computer_win, :human_win

	def initialize
		weaponArray = ["rock", "paper", "scissors"]
		@computer = weaponArray[rand(weaponArray.length)]
		@weapon
		@human_win = 0
		@computer_win = 0

	end

	def game_time
		if @computer == "rock" && @weapon == "scissors" 
			 result = "Computer wins!"
		elsif @computer == @weapon
			 result = "It's a tie!"
		elsif @computer == "scissors" && @weapon == "paper"
			 result = "Computer wins!"
		elsif @computer == "paper" && @weapon == "rock"
			 result = "Computer Wins"
		elsif @computer == "scissors" && @weapon == "rock"
			 result = "You win!"
		elsif @computer == "paper" && @weapon == "scissors"
			 result = "You win!"
		elsif @computer == "rock" && @weapon == "paper"
			 result = "You Win!"
		end

		if result == "You Win!"
			@human_win+=1
		elsif result == "Computer Wins!"
			@computer_win+=1
		end

		result
	end

	

end

game = Game.new
game.game_time


