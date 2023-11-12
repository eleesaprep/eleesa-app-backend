class RemoveColumnFromCourses < ActiveRecord::Migration[7.0]
  def change
    remove_column :courses, :instructor_id, :bigint
  end
end
