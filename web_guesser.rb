require 'sinatra'
require 'sinatra/reloader'

SECRET_NUMBER = rand(100)

def check_guess(guess)
  if guess > (SECRET_NUMBER + 5)
    ["Way too high!", "red"]
  elsif guess > SECRET_NUMBER
    ["Too high!", "#FF6666"]
  elsif guess < (SECRET_NUMBER - 5)
    ["Way too low!", "red"]
  elsif guess < SECRET_NUMBER
    ["Too low!", "#FF6666"]
  else
    ["The SECRET NUMBER is #{SECRET_NUMBER}", "green"]
  end
end

get '/' do
  guess = params["guess"].to_i
  message, color = check_guess(guess)
  erb :index, :locals => {:color => color, :message => message}
end
