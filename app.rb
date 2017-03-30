require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get "/" do
    erb(:index)
  end

  post "/names" do
    $game = Game.new( Player.new(params["Player 1"]), Player.new(params["Player 2"]))
    p $game
    redirect '/play'
  end

  get '/play' do
    @player1 = $game.player1
    @player2 = $game.player2
    erb(:play)
  end

  post '/switch' do
    $attacker = params.keys.last
    redirect '/attack'
  end

  get '/attack' do
    @player1 = $game.player1
    @player2 = $game.player2
    @attacker = $attacker
    $game.attack(@player2)
    erb :attack
  end

  run! if app_file == $0
end
