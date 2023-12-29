class AddIndexToProgresses < ActiveRecord::Migration[7.0]
  def change
    add_index :progresses, [:user_id, :quiz_id], unique: true
  end
end
