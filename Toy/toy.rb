require 'sinatra'
require './read'

set :port, 4567

get '/' do
  "<h1>The Gun shop</h1>
<a href='/toys'>show toys </a>"
end

get '/toys' do
   @toys = read_toys
   erb :'toys/index'
end

get '/toys/create' do
   erb :'toys/create'
end

post '/toys' do
   new_toy = { product: params[:product], price: params[:price], stock: params[:stock] }

   toys = read_toys
   toys << new_toy
   write_toys( toys )

   i = toys.length - 1

   redirect "/toys/#{i}"
 end




get '/toys/:i' do
   @i = params[:i].to_i
   toys = read_toys
   @toy= toys[@i]
   erb :'toys/show'
end
