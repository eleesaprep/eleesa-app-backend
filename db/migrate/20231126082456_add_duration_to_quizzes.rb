class AddDurationToQuizzes < ActiveRecord::Migration[7.0]
  def change
    add_column :quizzes, :duration, :decimal
  end
end
