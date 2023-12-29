class AddRefToQuizzes < ActiveRecord::Migration[7.0]
  def change
    add_reference :progresses, :quiz, null: false, foreign_key: true
  end
end
