class AddColumnToProgresses < ActiveRecord::Migration[7.0]
  def change
    add_column :progresses, :exam_title, :string
  end
end
