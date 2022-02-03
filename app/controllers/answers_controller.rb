class AnswersController < ApplicationController
  before_action :set_answer, only: %i[ edit update show destroy ]
  before_action :set_exam, only: %i[ new create ]
  def index
    @answer = Answer.all
  end

  def show
  end

  def new
    @answer = Answer.new
  end

  def create
    @answer = Answer.new(answer_params)
    @answer.user = current_user
    if @answer.save
      redirect_to exam_path(@exam)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @answer.update(answer_params)
      redirect_to answer_path(@answer)
    else
      render :edit
    end
  end

  def destroy
    @answer.destroy
    redirect_to answer_path
  end

  private

  def answer_params
    params.require(:answer).permit(:approved, :answer, :exam_id, :user_id)
  end

  def set_answer
    @answer = answer.find(params[:id])
  end

  def set_exam
    @exam = exam.find(params[:id])
  end
end
