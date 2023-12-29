class AddColToProgresses < ActiveRecord::Migration[7.0]
  def change
    add_column :progresses, :course_code, :string
  end
end
