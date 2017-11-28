class UsersController < ApplicationController
  get '/signup' do
    if !logged_in?
      erb :'/users/create_user'
    else
      redirect to '/boards'
    end
  end

  post '/signup' do
    if params[:username].empty? || params[:email].empty? || params[:password].empty?
      redirect to '/signup'
    else
      user = User.create(username: params[:username], email: params[:email], password: params[:password])
      session[:user_id] = user.id
      redirect to '/boards'
    end
  end
end
