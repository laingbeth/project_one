require 'sinatra'
require_relative './model/listings'


get '/' do
  erb :home
end

get '/about' do
  erb :about
end

get '/listings' do 
	erb :listings
end	

get '/who' do
  erb :who
end

get '/restaurants/:name' do
  @restaurant = Inventory.find(params[:name])
  erb :restaurant
end
