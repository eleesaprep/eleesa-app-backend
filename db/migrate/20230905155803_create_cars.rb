class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :make
      t.string :model
      t.integer :year
      t.string :color
      t.decimal :rental_rate_per_day
      t.boolean :availability

      t.timestamps
    end
  end
end
