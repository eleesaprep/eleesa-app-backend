class AddInstructorToCourses < ActiveRecord::Migration[7.0]
  def change
    add_reference :quizzes, :course, null: false, foreign_key: true
    add_reference :questions, :quiz, null: false, foreign_key: true
    add_reference :options, :question, null: false, foreign_key: true
    add_reference :materials, :course, null: false, foreign_key: true
    add_reference :progresses, :user, null: false, foreign_key: true
    add_reference :progresses, :course, null: false, foreign_key: true
    add_reference :enrollments, :user, null: false, foreign_key: true
    add_reference :enrollments, :course, null: false, foreign_key: true
    add_reference :progresses, :quiz, null: false, foreign_key: true
    add_index :enrollments, [:user_id, :course_id], unique: true
    add_index :options, [:option_text, :question_id], unique: true
    add_index :progresses, [:user_id, :quiz_id], unique: true
  end
end
