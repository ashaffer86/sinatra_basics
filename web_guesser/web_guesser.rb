require 'sinatra'
require 'sinatra/reloader'

int_random = rand(101)

get '/hi' do

  erb :index, :locals => {:random_number => int_random, :message => check_guess(params["guess"], int_random)}

end

def check_guess(guess, correct_number)
  if guess == nil || guess.gsub(/\s+/,"") == "" then
    return "Please guess a number"
  end

  int_guess = guess.gsub(/\s+/,"").to_i

  if int_guess < correct_number - 5
    return "Guess is to way too low!!"
  elsif int_guess < correct_number
    return "Guess is too low"
  elsif int_guess > correct_number + 5
    return "Guess is way too high!!"
  elsif int_guess > correct_number
    return "Guess is too high"
  else
    return "correct guess!"
  end

end
