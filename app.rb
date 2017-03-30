require 'sinatra/base'
require_relative './lib/player'

class Battle < Sinatra::Base

  enable :sessions

  get "/" do
    erb(:index)
  end

  post "/names" do
    $player1 = Player.new(params["Player 1"])
    $player2 = Player.new(params["Player 2"])
    redirect '/play'
  end

  get '/play' do
    @player1_name = $player1.name
    @player2_name = $player2.name
    $p1_health = 100
    $p2_health = 100
    erb(:play)
  end

  get '/attack' do
    @player1_name = $player1.name
    @player2_name = $player2.name
    erb :attack
  end

  run! if app_file == $0
end
