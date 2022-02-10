class AddAnswer2ToExam < ActiveRecord::Migration[6.1]
  def change
    add_column :exams, :ru1, :string
    add_column :exams, :ru2, :string
    add_column :exams, :ru3, :string
    add_column :exams, :ru4, :string
  end
end
