require 'sinatra/base'
#require 'sinatra'
require 'shotgun'

# get '/' do
#   "Hello World"
# end

class Battle < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    p params
    @player_1_name = params[:player_1_name]
    @player_2_name = params[:player_2_name]
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
