class Course < ApplicationRecord
  has_many :enrollments
  has_many :quizzes
  has_many :materials
  has_many :progresses
  has_many :users, through: :enrollments
  has_many :instructors

  validates_uniqueness_of :course_code, case_sensitive: false
end
