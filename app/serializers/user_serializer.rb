class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :full_name, :user_type, :email
  has_many :progresses
  has_many :enrollments
  has_many :courses, through: :enrollments
  has_many :projects
  has_many :announcements
end
