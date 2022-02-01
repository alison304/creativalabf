class CreateExams < ActiveRecord::Migration[6.1]
  def change
    create_table :exams do |t|
      t.text :question
      t.string :answer_solution
      t.references :detail, null: false, foreign_key: true

      t.timestamps
    end
  end
end
