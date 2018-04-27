require 'sinatra'
require 'sinatra/activerecord'
require 'pg'
require 'rake'

# require_relative all Models

set :database, {adapter: 'postgresql', database: 'blog_site'} 

get '/' do
	erb :index
end

get '/login' do
	erb :login
end

get '/logout' do
	erb :logout
end

get '/signup' do
	erb :signup
end

get '/addedit' do
	erb :addedit
end