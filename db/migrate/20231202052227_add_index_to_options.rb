class AddIndexToOptions < ActiveRecord::Migration[7.0]
  def change
    add_index :options, [:option_text, :question_id], unique: true
  end
end
