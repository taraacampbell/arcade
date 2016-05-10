require 'sinatra'
require_relative 'models/rps.rb'

get '/' do
	erb :index
end

post '/' do
	player_1 = Player.new(params[:name])
	victory = Game.new(player_1)
	
	player_1.result = params[:weapon]
	player_2.result = params[:weapon2]
end
