class EnrollmentSerializer < ActiveModel::Serializer
  attributes :id, :enrollment_date, :status
  belongs_to :user
  belongs_to :course
end
