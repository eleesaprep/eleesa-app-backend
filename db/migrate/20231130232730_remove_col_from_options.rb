class RemoveColFromOptions < ActiveRecord::Migration[7.0]
  def change
    remove_column :options, :is_correct, :string
  end
end
