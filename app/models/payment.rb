class Payment < ApplicationRecord
  belongs_to :rental

  validates :payment_method, presence: true
end
