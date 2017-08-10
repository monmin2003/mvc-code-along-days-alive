require 'bundler'
Bundler.require
require_relative 'models/model.rb'
class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end

  
#link to about page
get '/about_route'do
  erb :about
end
# #post route--- matches the action from the form in the index. we made up "user_bday" to hold the user's input
# post '/calculate_days' do 
#   user_bday=params[:birthday]
#   #birthday comes from the name of one of the inputs from the index
#   #years alive is the name of the method from the model. 
#   #user_bday is from the line above. @answer we made up. We made it an instance variable (with @) because it is holding our final answer. 
#   @answer=years_alive(user_bday)
#   #takes us to results.erb
#   erb :results
# end
post '/find_gif' do
  user_term=params[:gif_search]
  @answer=get_gif(user_term)
  erb :results
end
end