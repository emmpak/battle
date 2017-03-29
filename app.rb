require 'sinatra/base'

class Battle < Sinatra::Base

  get "/" do
    erb(:players)
  end

  post "/names-submit" do
    p params
    @player1 = params["Player 1"]
    @player2 = params["Player 2"]
    erb(:battle)
  end

  run! if app_file == $0
end
