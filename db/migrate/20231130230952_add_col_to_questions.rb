class AddColToQuestions < ActiveRecord::Migration[7.0]
  def change
    add_column :questions, :time, :integer
  end
end
