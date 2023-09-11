class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :full_name, :role, :email, :phone_number, :address
  has_many :rentals
end
