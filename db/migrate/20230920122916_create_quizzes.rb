class CreateQuizzes < ActiveRecord::Migration[7.0]
  def change
    create_table :quizzes do |t|
      t.string :exam_title
      t.datetime :exam_date
      t.decimal :duration
      t.decimal :total_marks

      t.timestamps
    end
  end
end
