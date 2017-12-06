class UsersController < ApplicationController
  get '/users/:slug' do
    @user = User.find_by_slug(params[:slug])
    erb :'/users/show'
  end

  get '/signup' do
    if !logged_in?
      erb :'/users/create_user'
    else
      redirect to '/boards'
    end
  end

  post '/signup' do
#     if params[:username].empty? || params[:email].empty? || params[:password].empty?
#       flash[:message] = "Please fill in all the fields"
#       redirect to '/signup'
#     else
#       user = User.create(username: params[:username], email: params[:email], password: params[:password])
#       session[:user_id] = user.id
#       redirect to '/boards'
#     end
    
#     Refactor
    user = User.new(params[:user])
    if user.save
      session[:user_id] = user.id
      redirect to '/boards'
    else
      redirect to '/signup'
    end
  end

  get '/login' do
    if !logged_in?
      erb :'/users/login'
    else
      redirect to '/boards'
    end
  end

  post '/login' do
    user = User.find_by(:username => params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect to '/boards'
    else
      flash[:message] = "Please try again"
      redirect to '/signup'
    end
  end

  get '/logout' do
    if logged_in?
      session.destroy
      redirect to '/login'
    else
      redirect to '/'
    end
  end
end
