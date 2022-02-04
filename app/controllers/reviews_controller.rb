class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
    @detail = @reviews.first.detail
  end

  def new
    @detail = Detail.find(params[:detail_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    # we need `restaurant_id` to associate review with corresponding restaurant
    @detail = Detail.find(params[:detail_id])
    @review.detail = @detail
    if @review.save
      redirect_to reviews_path(@reviews)
    else
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to detail_path(@review.detail)
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end

end
