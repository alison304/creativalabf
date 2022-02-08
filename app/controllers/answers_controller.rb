class AnswersController < ApplicationController
  before_action :set_answer, only: %i[ edit update show destroy ]
  before_action :set_exam, only: %i[ new create]
  def index
    @answers = current_user.answers
  end

  def show
  end

  def new
    @answer = Answer.new
    @exam = Exam.find(params[:exam_id])
    @exams = @exam.detail.exams
    @detail = @exam.detail
  end

  def create
    @answer = Answer.new(answer_params)
    # @answer.approved = @approved
    # @exam = Exam.find(params[:exam_id])
    if @answer.answer == @exam.answer_solution
      @answer.approved = true
    else
      @answer.approved = false
    end
    @answer.user = current_user
    @answer.exam = @exam
    if @answer.save
      redirect_to new_exam_answer_path(@exam)
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
    @answer = Answer.find(params[:id])
  end

  def set_exam
    @exam = Exam.find(params[:exam_id])
  end
end
