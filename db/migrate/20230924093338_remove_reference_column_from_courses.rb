class RemoveReferenceColumnFromCourses < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :courses, column: :instructor_id
  end
end
