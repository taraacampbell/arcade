require 'sinatra'
require_relative 'models/rps.rb'

get '/' do
	erb :index
end

post '/' do
	player_1 = Player.new(params[:name])
	player_2 = Player.new(params [:name])
	game = Game.new(player_1, player_2)
	
	player_1.result = params[:p1_choice]
	player_2.result = params[:p2_choice]
end
