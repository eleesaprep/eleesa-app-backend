class Option < ActiveRecord::Migration[7.0]
  def change
    create_table :options do |t|
      t.string :option_text
      t.boolean :is_correct

      t.timestamps
    end
  end
end
