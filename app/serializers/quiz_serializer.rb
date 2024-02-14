class QuizSerializer < ActiveModel::Serializer
  attributes :id, :exam_date, :exam_title, :duration, :total_marks
  belongs_to :course
  has_many :questions
end
