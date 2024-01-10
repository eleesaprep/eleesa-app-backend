class AddIndexToEnrollment < ActiveRecord::Migration[7.0]
  def change
    add_index :enrollments, [:user_id, :course_id], unique: true
    add_index :options, [:option_text, :question_id], unique: true
    add_index :progresses, [:user_id, :quiz_id], unique: true
  end
end
