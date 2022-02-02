class ReviewsController < ApplicationController
  def new
    @detail = Detail.find(params[:detail_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    # we need `restaurant_id` to associate review with corresponding restaurant
    @detail = Detail.find(params[:detail_id])
    @review.detail = @detail
    @review.save
    redirect_to detail_path(@detail)
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end

end
