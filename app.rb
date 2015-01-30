require 'sinatra'
require_relative './model/listing'



get '/' do
  erb :home
end

get '/about' do
  erb :about
end

get '/restaurants' do 
	@restaurants = Listing.all
	erb :restaurants
end	

get '/who' do
  erb :who
end

get '/restaurants/:id' do
	@restaurant = Listing.find(params[:id].to_i)
	puts "Found restaurant: #{@restaurant}"
  erb :restaurant
end
