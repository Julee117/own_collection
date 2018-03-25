class ReviewsController < ApplicationController
  post '/items/:item_id/reviews' do
    @item = Item.find(params[:item_id])
    @review = @item.reviews.build(params[:review])
    @review.user = current_user
    if @review.save
      flash[:message] = "Review was submitted!"
      redirect to "/items/#{@item.id}"
    else
      flash[:message] = "Review failed!"
      redirect to "/items/#{@item.id}"
    end
  end
end
