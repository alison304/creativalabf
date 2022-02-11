class AddFieldsToExam < ActiveRecord::Migration[6.1]
  def change
    add_column :exams, :p2, :string
    add_column :exams, :r21, :string
    add_column :exams, :r22, :string
    add_column :exams, :r23, :string
    add_column :exams, :r2, :string
    add_column :exams, :p3, :string
    add_column :exams, :r31, :string
    add_column :exams, :r32, :string
    add_column :exams, :r33, :string
    add_column :exams, :r3, :string
    add_column :exams, :p4, :string
    add_column :exams, :r41, :string
    add_column :exams, :r42, :string
    add_column :exams, :r43, :string
    add_column :exams, :r4, :string
  end
end
