require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    original_str = params[:string]
    @reversed_str = original_str.reverse

    erb :reversed
  end

  get '/friends' do
    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 
    'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']
    erb :friends
  end
end