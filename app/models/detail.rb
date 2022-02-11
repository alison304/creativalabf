class Detail < ApplicationRecord
  belongs_to :course
  has_one :exam, dependent: :destroy
  has_many :reviews,dependent: :destroy
end
