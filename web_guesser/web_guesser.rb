require 'sinatra'
require 'sinatra/reloader'

random_int = rand(101)
get '/hi' do
  erb :index, :locals => {:random_number => random_int}
end
