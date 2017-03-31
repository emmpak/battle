require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'
require_relative './lib/polar_bear'

class Battle < Sinatra::Base

  enable :sessions

  get "/" do
    erb(:index)
  end

  before '/*' do
    @game = Game.access
  end

  post "/names" do
    @game = Game.instance( Player.new(params["Player 1"]), PolarBear.new(params["Player 2"]))
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  get '/attack' do
    @game.attack(@game.opponent_of(@game.current_turn))
    erb(:attack)
  end

  post '/switch_turns' do
    @game.switch_turns
    redirect '/play'
  end


  run! if app_file == $0
end
