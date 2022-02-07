class DetailsController < ApplicationController
  def index
    @details = Detail.where(course_id: params[:course_id])

    # @details = Detail.all
  end

  def show
    @detail = Detail.find(params[:id])
    @course = @detail.course
    @review = Review.new
  end

  def new
    @course = Course.find(params[:course_id])
    @detail = Detail.new
  end

  def create
    @detail = Detail.new(detail_params)
    @detail.user = current_user
    # we need `restaurant_id` to associate detail with corresponding restaurant
    @course = Course.find(params[:course_id])
    @detail.course = @course
    if @detail.save
      redirect_to course_path(@course)
    else
      render :new
    end
  end

  def edit
    @detail = Detail.find(params[:id])
  end

  def update
    @detail = Detail.find(params[:id])
    if @detail.update(detail_params)
      redirect_to course_path
    else
      render :edit
    end
  end

  def destroy
    @detail = detail.find(params[:id])
    @detail.destroy
    redirect_to course_path(@detail.course)
  end

  private

  def review_params
    params.require(:detail).permit(:name, :content)
  end
end
