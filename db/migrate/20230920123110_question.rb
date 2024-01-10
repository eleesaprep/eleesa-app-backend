class Question < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.string :question_text
      t.string :question_type
      t.string :correct_answer
      t.integer :time

      t.timestamps
    end
  end
end
