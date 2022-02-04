class AddVideoUrlToDetail < ActiveRecord::Migration[6.1]
  def change
    add_column :details, :video_url, :string
  end
end
