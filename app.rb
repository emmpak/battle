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
    @player1_hp = $player1.hp
    @player2_hp = $player2.hp
    erb(:play)
  end

  get '/attack' do
    @player1_name = $player1.name
    @player2_name = $player2.name
    p $player2.reduce_hp
    @player1_hp = $player1.hp
    @player2_hp = $player2.hp
    erb :attack
  end

  run! if app_file == $0
end
