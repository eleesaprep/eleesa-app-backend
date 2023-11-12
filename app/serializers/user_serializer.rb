class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :full_name, :user_type, :email
  has_one :progress
  has_many :courses, through: :enrollments
  has_many :responses
end
