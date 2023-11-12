class CreateProgresses < ActiveRecord::Migration[7.0]
  def change
    create_table :progresses do |t|
      t.decimal :total_marks_obtained
      t.decimal :total_marks_available
      t.string :grade
      t.string :status

      t.timestamps
    end
  end
end
