require 'sinatra'
require 'sinatra/reloader'

get '/hi' do
  "The SECRET number is #{rand(101)}"
end
