
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
			 result = "Computer wins! Try again"
		elsif @computer == @weapon
			 result = "It's a tie! Try again"
		elsif @computer == "scissors" && @weapon == "paper"
			 result = "Computer wins! Try again"
		elsif @computer == "paper" && @weapon == "rock"
			 result = "Computer wins! Try again"
		elsif @computer == "scissors" && @weapon == "rock"
			 result = "You win! Try again"
		elsif @computer == "paper" && @weapon == "scissors"
			 result = "You win! Try again"
		elsif @computer == "rock" && @weapon == "paper"
			 result = "You win! Try again"
		end

		if result == "You win! Try again"
			@human_win+=1
		elsif result == "Computer wins! Try again"
			@computer_win+=1
		end
	end

		
	def best_of_three
		if @human_win==2
			"You win best of 3!"
		elsif @computer_win==2
			"Computer wins best of 3!"
		end
	end

	

end

game = Game.new
game.game_time


