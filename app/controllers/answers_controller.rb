class AnswersController < ApplicationController
  before_action :set_answer, only: %i[ edit update show destroy ]
  before_action :set_exam, only: %i[ new create]
  def index
    @answers = current_user.answers
  end

  def show
    @exam = @answer.exam
    @detail = @exam.detail
  end

  def new
    @answer = Answer.new()
    @detail = @exam.detail
  end

  def create
    answer = Answer.new(answer_params)
    answer.exam = @exam
    answer.user = current_user
    answer.score = 0
    answer.score += 1 if @exam.answer_solution == answer.r1
    answer.score += 1 if @exam.r2 == answer.r2
    answer.score += 1 if @exam.r3 == answer.r3
    answer.score += 1 if @exam.r4 == answer.r4
    answer.approved = answer.score >= 3
    answer.save
    redirect_to answer_path(answer)
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
    params.require(:answer).permit( :r1, :r2, :r3, :r4 )
  end

  def set_answer
    @answer = Answer.find(params[:id])
  end

  def set_exam
    @exam = Exam.find(params[:exam_id])
  end
end
