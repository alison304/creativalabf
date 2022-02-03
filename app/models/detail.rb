class Detail < ApplicationRecord
  belongs_to :course
  has_many :exams
  has_many :reviews
end
