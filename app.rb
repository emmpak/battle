require 'sinatra/base'
require 'shotgun'

class Battle < Sinatra::Base

  set :session_secret, 'super'

  enable :sessions

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
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb(:play)
  end

  run! if app_file == $0
end
