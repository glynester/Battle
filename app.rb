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
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end
  
  before do
    @game = Game.instance
  end

  get '/play' do
    erb :play
  end

  post '/attack' do
    @game.attack(@game.opponent_of(@game.current_turn))
    if @game.game_over?         #$game
      redirect '/game-over' 
    else
      redirect '/attack' 
    end
  end
  
  get '/attack' do
    erb :attack
  end

  post '/switch-turns' do
    @game.switch_turns
    redirect '/play'
  end
  
  get '/game-over' do
    erb :game_over
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
