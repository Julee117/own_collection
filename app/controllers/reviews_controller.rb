class ReviewsController < ApplicationController
  post '/items/:item_id/reviews' do
    @item = Item.find_by(params[:item_id])
    @review = @item.reviews.build(params[:review])
    @review.user = current_user
    if @review.save
      flash[:message] = "Review was submitted!"
      redirect to "/reviews/#{@item.id}"
    else
      flash[:message] = "Review failed!"
      redirect to "/items/#{@item.id}"
    end
  end

  get '/reviews/:id' do
    @item = Item.find_by_id(params[:id])
    @review = Review.find_by(params[:item_id])
    erb :'reviews/show_item_review'
  end
end
