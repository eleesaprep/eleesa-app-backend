class AddColToCourses < ActiveRecord::Migration[7.0]
  def change
    add_column :courses, :semester, :integer
    add_column :courses, :year, :integer
  end
end
