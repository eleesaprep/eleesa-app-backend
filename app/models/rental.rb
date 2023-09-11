class Rental < ApplicationRecord
  belongs_to :car
  belongs_to :user
  has_one :payment

  validates :pickup_date, presence: true
  validates :return_date, presence: true
end
