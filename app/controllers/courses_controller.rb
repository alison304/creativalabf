class CoursesController < ApplicationController
  before_action :set_course, only: %i[ edit update show destroy ]

  def index
    @course = Course.all
  end

  def show
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    @course.user = current_user
    if @course.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @course.update(course_params)
      redirect_to course_path(@course.id)
    else
      render :edit
    end
  end

  def destroy
    @course.destroy
    redirect_to list_path(@course.detail)
  end

  private

  def course_params
    params.require(:course).permit(:name, :description, :url)
  end

  def set_course
    @course = course.find(params[:id])
  end
end
