class AddPremiumToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :premium, :boolean, default: true
  end
end
