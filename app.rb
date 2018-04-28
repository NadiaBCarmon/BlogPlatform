require 'sinatra'
require 'sinatra/activerecord'
require 'pg'
require 'rake'

require_relative './models/Blog'
require_relative './models/Post'
require_relative './models/Tag'
require_relative './models/TagandPost'
require_relative './models/User'

set :database, {adapter: 'postgresql', database: 'blog_site'} 

get '/' do
	
	@users = User.all
	p @users
	@blogs = Blog.all
	@posts = Post.all
	@tags = Tag.all
	@tagandposts = Tagandpost.all
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