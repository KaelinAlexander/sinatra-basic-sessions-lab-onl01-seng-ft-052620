require_relative 'config/environment'

class App < Sinatra::Base
configure do
  enable :sessions
  set :session_secret, "rng"

  get '/' do
    @sessions = session
    erb :index
  end

  post '/checkout' do
    @cart = @sessions["item"] = params[:item]
  end

end
