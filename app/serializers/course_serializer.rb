class CourseSerializer < ActiveModel::Serializer
  attributes :id, :course_code, :course_name, :semester, :year
  has_many :enrollments
  has_many :quizzes
  has_many :materials
  has_many :progresses
  has_many :users, through: :enrollments
end
