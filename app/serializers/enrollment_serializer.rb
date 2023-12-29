class EnrollmentSerializer < ActiveModel::Serializer
  attributes :id, :enrollment_date
  belongs_to :user
  belongs_to :course
end
