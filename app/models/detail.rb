class Detail < ApplicationRecord
  belongs_to :course
  has_many :exams, dependent: :destroy
  has_many :reviews,dependent: :destroy
end
