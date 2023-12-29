class Quiz < ApplicationRecord
  belongs_to :course
  has_many :questions
  has_many :progresses
end
