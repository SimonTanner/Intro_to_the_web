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

get '/cat' do
    "<div style='border: 3px dashed red'>
    <img src='http://bit.ly/1eze8aE'>
    <div>"
end