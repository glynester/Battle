require 'sinatra/base'
require 'spec_helper'

class Battle < Sinatra::Base
  use Rack::Session::Cookie,  :key => 'rack.session',
                              :path => '/',
                              :secret => 'your_secret'

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:Player1])
    $player_2 = Player.new(params[:Player2])
    # session[:player_1_name] = params[:Player1]
    # session[:player_2_name] = params[:Player2]
    redirect '/play'
  end

  get '/play' do
    @attack = $attack
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    erb(:play)
  end

  post '/attack' do
    $attack = !!params[:attack]
    $player_2.recieve_damage  
    redirect '/play'
  end

  
  run! if app_file == $0
end
