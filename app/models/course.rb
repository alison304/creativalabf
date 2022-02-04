class Course < ApplicationRecord
  has_many :details, dependent: :destroy
end
