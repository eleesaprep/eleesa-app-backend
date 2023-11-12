class ProgressSerializer < ActiveModel::Serializer
  attributes :id, :total_marks_available, :total_marks_obtained, :grade, :status
  belongs_to :student
  belongs_to :course
end
