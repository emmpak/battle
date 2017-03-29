require 'sinatra/base'
require 'shotgun'

class Battle < Sinatra::Base

  set :session_secret, 'super'

  enable :sessions

  def initialize
    @p1_health = 100
    @p2_health = 100
  end
  get "/" do
    erb(:players_form)
  end

  post "/names" do
    p params
    session[:player1] = params["Player 1"]
    session[:player2] = params["Player 2"]
    redirect '/play'
  end

  get '/play' do
    @p1_health = 100
    @p2_health = 100
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb(:play)
  end

  run! if app_file == $0
end
