class RentalSerializer < ActiveModel::Serializer
  attributes :id, :pickup_date, :return_date, :total_cost, :status
  belongs_to :user
  belongs_to :car
end
