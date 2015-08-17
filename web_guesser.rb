require 'sinatra'
require 'sinatra/reloader'

# SECRET = rand(101)

get '/' do
  number = rand(100)
  erb :index, :locals => {:number => number}
end
