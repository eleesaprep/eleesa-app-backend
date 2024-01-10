class Course < ApplicationRecord
  has_many :enrollments, dependent: :destroy
  has_many :quizzes, dependent: :destroy
  has_many :materials, dependent: :destroy
  has_many :progresses, dependent: :destroy
  has_many :users, through: :enrollments, dependent: :destroy

  validates_uniqueness_of :course_code, case_sensitive: false
end
