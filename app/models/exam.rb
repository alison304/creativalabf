class Exam < ApplicationRecord
  belongs_to :detail
  has_many :answers
end
