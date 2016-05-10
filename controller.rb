require 'sinatra'
require_relative 'models/rps.rb'
enable :sessions

get '/' do
	erb :index
end

post '/' do
	game = Game.new
	session[:game] = game
	game.weapon = params[:player1_choice]
	@result=game.game_time
	@human_win = game.human_win
	@computer_win = game.computer_win
	erb :index
end



