class Player
	def initialize
		@name
		@choice

		puts "what's your name?"
		@name=gets.chomp
		puts "welcome #{@name}!"
	end

	def name
		@name
	end
	

	def choice
		puts "#{@name}, pick 1 for rock, 2 for scissors, and 3 for paper"
		@choice=gets.chomp.to_i
		rock = 1
		scissors = 2
		paper = 3
	end

end

class Game
	def initialize(player_1, player_2)
		@player_1=player_1
		@player_2=player_2
		@player_1_wins = 0
		@player_2_wins = 0
	end

	def result
		until @player_1_wins == 2 or @player_2_wins == 2
		if @player_1.choice - @player_2.choice == (0-1) or 2
			puts "#{@player_1.name} wins!"
			 @player_1_wins = (@player_1_wins + 1)
		elsif @player_2.choice - @player_1.choice == (0-1) or 2
			puts "#{@player_2.name} wins!"
			@player_2_wins = (@player_2_wins + 1)
		end
		end
	end

	def winner
		if @player_1_wins == 2
			puts "#{@player_1.name} wins best of 3!"
		elsif @player_2_wins == 2
			puts "#{@player_2.name} wins best of 3!"
		end
	end


end

player_1=Player.new
player_2=Player.new
new_game=Game.new(player_1, player_2)