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
enable :sessions

get '/' do	

	# params[username]

	# @users = User.find_by(params[:username])

	#  		if @users != nil
	#  			session[:user_id] = @user.id
	#  			erb :login
	# 		end

	# @blogs = Blog.where(user_id: 1)

	# @posts = Post.where(blog_id: 1)
	# @tags = Tag.all
	# @tagandposts = Tagandpost.where(post_id: 1)
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

	loop do
	@post = Post.create()
	Post.create(blog_id: 1, post_title: params[:title], post_content: params[:content])
	end
	# params[:content]
	erb :addedit
end

get '/blog' do
	erb :blog
end