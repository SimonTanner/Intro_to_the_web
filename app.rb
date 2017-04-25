require 'sinatra'

set :session_secret, 'super secret'

get '/' do
  'hello!'
end

get '/secret' do
    'You\'ve found the secret'
end

get '/hidden' do
    'You\'ve found the hidden page'
end

get '/super secret' do
    'Amazing you found the super secret page'
end

get '/random-cat' do
    @name = ["Daniel", "Simon", "Arnold"].sample
    erb(:index)
end

get'/cat-form' do
    erb(:index_2)
end

post '/named-cat' do
    p params
    @name = params[:name]
    erb(:index)
end

