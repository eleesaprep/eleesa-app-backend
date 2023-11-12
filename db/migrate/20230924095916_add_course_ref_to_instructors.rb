class AddCourseRefToInstructors < ActiveRecord::Migration[7.0]
  def change
    add_reference :instructors, :course, null: false, foreign_key: true
  end
end
