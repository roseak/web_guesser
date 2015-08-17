require 'sinatra'
require 'sinatra/reloader'

# SECRET = rand(101)

get '/' do
  secret = rand(101)
  "The SECRET NUMBER is #{secret}"
end
