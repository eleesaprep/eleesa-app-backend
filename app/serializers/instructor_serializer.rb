class InstructorSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :email, :department
  has_one :course
end
