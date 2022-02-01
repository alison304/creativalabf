class Review < ApplicationRecord
  belongs_to :detail
  belongs_to :user
  has_many :users
  has_many :details
end
