class ItemsController < ApplicationController
  get '/items' do
    @items = Item.all
    if logged_in?
      erb :'/items/index'
    else
      redirect to '/login'
    end
  end

  get '/items/new' do
    if logged_in?
      erb :'/items/create_item'
    else
      redirect to '/login'
    end
  end

  post '/items' do
    if params[:item][:description].empty? || params[:item][:url].empty? || params[:item][:site_source].empty?
      redirect to '/items/new'
    else
      @item = Item.create(description: params[:item][:description], url: params[:item][:url], site_source: params[:item][:site_source], board_id: params[:item][:board_id])
      redirect to "/items/#{@item.id}"
    end
  end

  get '/items/:id' do
    if logged_in?
      @item = Item.find_by_id(params[:id])
      erb :'items/show_item'
    else
      redirect to '/login'
    end
  end

  get '/items/:id/edit' do
    if !logged_in?
      redirect to '/login'
    else
      @item = Item.find_by_id(params[:id])
      if @item.board.user_id == current_user.id
        erb :'items/edit_item'
      else
        redirect to '/items'
      end
    end
  end

  patch '/items/:id' do
    @item = current_user.items.find_by_id(params[:id])
    if params[:item][:description].empty? || params[:item][:url].empty? || params[:item][:site_source].empty?
      redirect to "/items/#{@item.id}/edit"
    else
      @item.update(description: params[:item][:description], url: params[:item][:url], site_source: params[:item][:site_source], board_id: params[:item][:board_id])
      redirect to "/items/#{@item.id}"
    end
  end

  delete '/items/:id/delete' do
    @item = current_user.items.find_by_id(params[:id])
    if @item
      @item.destroy
      redirect to "/items"
    else
      redirect to '/login'
    end
  end
end
