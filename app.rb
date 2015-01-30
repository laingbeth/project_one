require 'sinatra'
require_relative './model/listing'



get '/' do
	@active = 'home'
  erb :home
end

get '/about' do
	@active = 'about'
  erb :about
end

get '/restaurants' do 
	 @active = 'restaurants'
  @search = params[:search]
  if @search && @search.length > 0
    @items = Listing.search(@search)
  else
	@restaurants = Listing.all
end
	erb :restaurants
end	

get '/who' do
	@active = 'who'
  erb :who
end

