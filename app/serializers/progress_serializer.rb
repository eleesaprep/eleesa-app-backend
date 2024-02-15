class ProgressSerializer < ActiveModel::Serializer
  attributes :id, :total_marks_available, :total_marks_obtained, :grade, :status, :course_code, :exam_title
  belongs_to :user
  belongs_to :course
  belongs_to :quiz
end
