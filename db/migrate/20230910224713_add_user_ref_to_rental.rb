class AddUserRefToRental < ActiveRecord::Migration[7.0]
  def change
    add_reference :rentals, :user, null: false, foreign_key: true
    add_reference :rentals, :car, null: false, foreign_key: true
    add_reference :payments, :rental, null: false, foreign_key: true
  end
end
