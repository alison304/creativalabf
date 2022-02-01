class CreateDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :details do |t|
      t.string :name
      t.text :content
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
