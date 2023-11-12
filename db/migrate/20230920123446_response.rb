class Response < ActiveRecord::Migration[7.0]
  def change
    create_table :responses do |t|
      t.string :response_text
      t.boolean :is_correct
      t.decimal :marks_obtained

      t.timestamps
    end
  end
end
