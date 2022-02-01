class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.text :description
      t.string :name

      t.timestamps
    end
  end
end
