require_relative 'config/environment'

class App < Sinatra::Base

  get '/reverse' do
    erb :reverse
  end

#Instance variables allow us to bypass scope between the various methods in a class. Creating an instance variable in a controller method (route) lets the contents become 'visible' to the erb file to which it renders.
  post '/reverse' do
  original_string = params["string"]
  @reversed_string = original_string.reverse
  erb :reversed
end

    # Write your code here!
    get '/friends' do
      @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']
      erb :friends
    end

end
