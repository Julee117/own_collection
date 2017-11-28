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
end
