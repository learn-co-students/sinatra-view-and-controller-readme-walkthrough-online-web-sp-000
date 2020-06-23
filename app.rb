require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    @user = "Ian"
  end

  get '/profile' do
    erb :profile
  end
  get '/reverse' do
    puts params
    erb :reverse
  end

  post '/reverse' do
    original_string = params["string"]
    @reversed_string = original_string.reverse

    erb :reversed
  end

  get '/friends' do
    # Write your code here!
    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']
    erb :friends
  end
end