require 'sinatra/base'
require 'shotgun'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  set :session_secret, "My session secret"

  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player_1_name]), Player.new(params[:player_2_name]))
    redirect '/play'
  end

  get '/play' do

    @player_1 = $game.player_1
    @player_2 = $game.player_2
    erb :play
  end

  get '/attack' do
    @player_1 = $game.player_1
    @player_2 = $game.player_2
    $game.attack(@player_2)
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
