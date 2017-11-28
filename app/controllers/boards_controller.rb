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

  get '/boards/:slug' do
    @board = Board.find_by_slug(params[:slug])
    if logged_in?
      erb :"/boards/show_board"
    else
      redirect to '/login'
    end
  end

  get '/boards/:slug/edit' do
    if !logged_in?
      redirect to '/login'
    else
      @board = Board.find_by_slug(params[:slug])
      if @board.user_id == current_user.id
        erb :"/boards/edit_board"
      else
        redirect to "/boards"
      end
    end
  end

  patch '/boards/:slug' do
    @board = current_user.boards.find_by_slug(params[:slug])
    if params[:name].empty?
      redirect to "/boards/#{@board.slug}/edit"
    else
      @board.update(name: params[:name])
      redirect to "/boards/#{@board.slug}"
    end
  end
end
