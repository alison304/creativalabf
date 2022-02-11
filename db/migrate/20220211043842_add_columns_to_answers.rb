class AddColumnsToAnswers < ActiveRecord::Migration[6.1]
  def change
    add_column :answers, :r1, :string
    add_column :answers, :r2, :string
    add_column :answers, :r3, :string
    add_column :answers, :r4, :string
    add_column :answers, :score, :float
  end
end
