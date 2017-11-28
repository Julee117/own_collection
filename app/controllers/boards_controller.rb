class BoardsController < ApplicationController
  get '/boards' do
    @boards = Board.all
    if !logged_in?
      redirect to '/login'
    else
      erb :'/boards/index'
    end
  end

  get '/boards/new' do
    if !logged_in?
      redirect to '/login'
    else
      erb :'/boards/create_board'
    end
  end

  post '/boards' do
    if params[:name].empty?
      redirect to '/boards/new'
    else
      @review = current_user.boards.create(name: params[:name])
      redirect to "/boards/#{@board.slug}"
    end
  end
end
