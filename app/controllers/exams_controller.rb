class ExamsController < ApplicationController
  before_action :set_exam, only: %i[ edit update show destroy ]
  before_action :set_detail, only: %i[ create ]
  def index
    @exam = Exam.all
  end

  def show
  end

  def new
    @exam = Exam.new
  end

  def create
    @exam = Exam.new(exam_params)
    @exam.detail = @detail
    if @exam.save
      redirect_to exam_path(@exam)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @exam.update(exam_params)
      redirect_to exam_path(@exam)
    else
      render :edit
    end
  end

  def destroy
    @exam.destroy
    redirect_to exam_path
  end

  private

  def exam_params
    params.require(:exam).permit(:question, :answer_solution, :detail_id)
  end

  def set_exam
    @exam = exam.find(params[:id])
  end

  def set_detail
    @detail = detail.find(params[:id])
  end
end
