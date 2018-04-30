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
	erb :index
end
##------##

#Nav Bar#
##View Blog - Non-Logged In View##
get '/blog/view' do
	@entry_title = session[:entry_title]
	@entry_content = session[:entry_content]
	erb :view
end

#Redirects from Add/Edit Page#
post '/blog/post' do
	@thanks = "<h3>" + "Thanks for submitting your content!" + "</h3>"
	session[:entry_title] = "<h1>" + params[:title] + "</h1>",
	session[:entry_content] = "<h2>" + params[:content] + "</h2>"
end

get '/login' do
	erb :login
end

get '/signup' do
	erb :signup
end
#---End of Nav Routes---#


# post '/:user' do

# 	@users = User.find_by(username: params[:username], password: params[:password])
# 	if @users == nil
# 		@user = session[:id]
# 		@user = User.find(session[:id])

# 	Makes url the username entered in form
# 	 params[:user] = params[:username]
# 	 params[:user] = params.values_at('username')
# 	end
# end


get '/user/addedit' do
	@entry_title = session[:entry_title],
	@entry_content = session[:entry_content]
	# User.create(username: params[:username], email: params[:email], password: params[:password])
	erb :addedit
end


# Logout current user
get '/logout' do
	session.clear
	redirect '/login'
end