require 'sinatra'
require_relative './model/listings'



get '/' do
  erb :home
end

get '/about' do
  erb :about
end

get '/restaurants' do 
	erb :restaurants
end	

get '/who' do
  erb :who
end
