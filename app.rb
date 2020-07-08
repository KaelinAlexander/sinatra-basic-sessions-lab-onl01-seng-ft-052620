require_relative 'config/environment'

class App < Sinatra::Base
configure do
  enable :sessions
  set :session_secret, "rng"

  get '/' do
    @session = session
    erb :index
  end

  post '/checkout' do
    @cart = @session["item"] = params[:item]
  end
  erb :cart
end
