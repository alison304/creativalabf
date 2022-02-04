class AddAnswerToExam < ActiveRecord::Migration[6.1]
  def change
    add_column :exams, :answerA, :string
    add_column :exams, :answerB, :string
    add_column :exams, :answerC, :string
  end
end
