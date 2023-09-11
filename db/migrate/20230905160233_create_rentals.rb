class CreateRentals < ActiveRecord::Migration[7.0]
  def change
    create_table :rentals do |t|
      t.datetime :pickup_date
      t.datetime :return_date
      t.decimal :total_cost
      t.string :status

      t.timestamps
    end
  end
end
