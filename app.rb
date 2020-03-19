require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    "Welcome to your app!!!! I BUILT THIS!"
  end

  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    erb :reversed
  end

  get '/friends' do
    # Write your code here!

  end
end