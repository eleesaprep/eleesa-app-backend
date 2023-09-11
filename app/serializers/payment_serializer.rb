class PaymentSerializer < ActiveModel::Serializer
  attributes :id, :amount, :payment_date, :payment_method
  belongs_to :rental
end
