class RemoveColumnFromRentals < ActiveRecord::Migration[7.0]
  def change
    remove_column :rentals, :cars_id, :bigint
    remove_column :rentals, :users_id, :bigint
    remove_column :payments, :rentals_id, :bigint
  end
end
