class ExamsController < ApplicationController
  before_action :set_exam, only: %i[ edit update show destroy ]
  # before_action :set_detail, only: %i[ create ]
  def index
    @answer = Answer.new
    @exams = Exam.where(detail_id: params[:detail_id])
    @detail = Detail.find(params[:detail_id])
  end

  def show
  end

  def new
    @exam = Exam.new
    @detail = Detail.find(params[:detail_id])
  end

  def create
    @detail = Detail.find(params[:detail_id])
    @exam = Exam.new(exam_params)
    @exam.detail = @detail
    if @exam.save
      redirect_to detail_exams_path(params[:detail_id])
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
    params.require(:exam).permit(:question, :answer_solution, :answerA, :answerB, :answerC)
  end

  def set_exam
    @exam = Exam.find(params[:detail_id])
  end

  # def set_detail
  #   @detail = Detail.find(params[:id])
  # end
end
