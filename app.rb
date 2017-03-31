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
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  post '/switch' do
    $attacker = params.keys.last
    redirect '/attack'
  end

  get '/attack' do
    @game = $game
    @attacker = $attacker
    @game.switch if @attacker == "player2_attack"
    @game.attack(@game.player2)
    erb :attack
  end

  run! if app_file == $0
end
