require 'sinatra'
require 'sinatra/reloader'

SECRET_NUMBER = rand(100)

def check_guess(guess)
  if guess > (SECRET_NUMBER + 5)
    "Way too high!"
  elsif guess > SECRET_NUMBER
    "Too high!"
  elsif guess < (SECRET_NUMBER - 5)
    "Way too low!"
  elsif guess < SECRET_NUMBER
    "Too low!"
  else
    "The SECRET NUMBER is #{SECRET_NUMBER}"
  end
end

get '/' do
  guess = params["guess"].to_i
  message = check_guess(guess)
  erb :index, :locals => {:message => message}
end
