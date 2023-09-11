class CarSerializer < ActiveModel::Serializer
  attributes :id, :make, :model, :year, :color, :rental_rate_per_day, :availability
  has_many :rentals
end
