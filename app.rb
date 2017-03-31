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
    # game.change_turns(attacker)
    erb(:play)
  end

  # post '/switch' do
  #   $attacker = params.keys.last
  #   redirect '/attack'
  # end

  get '/attack' do
    @game = $game
    # @attacker = $attacker
    # @game.switch if @attacker == "player2_attack"
    # @attacker = @game.current_turn
    # p @attacker
    @game.attack(@game.player2)
    @game.switch_turns
    # p @game.current_turn
    erb :attack
  end

  get '/attack2' do
    @game = $game
    @game.attack(@game.player1)
    @game.switch_turns
    erb :attack2
  end

  run! if app_file == $0
end
