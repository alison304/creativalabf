class Detail < ApplicationRecord
  belongs_to :course
  has_many :exams
end
