class Course < ApplicationRecord
  has_many :details, dependent: :destroy
  has_one_attached :photo
end
