class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.decimal :amount
      t.datetime :payment_date
      t.string :payment_method

      t.timestamps
    end
  end
end
