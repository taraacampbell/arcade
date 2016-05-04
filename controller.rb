require 'sinatra'
require_relative 'models/rps.rb'

get '/' do
	erb :index
end

post '/' do
	p1 = Player.new(params[:name])
	p2 = Player.new(params [:name])
	game = Game.new(p1, p2)
	
	p1.response = params[:p1_choice]
	p2.response = params[:p2_choice]
end
