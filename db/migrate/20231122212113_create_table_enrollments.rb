class CreateTableEnrollments < ActiveRecord::Migration[7.0]
  def change
    create_table :enrollments do |t|
      t.datetime :enrollment_date
      
      t.timestamps
    end
  end
end
