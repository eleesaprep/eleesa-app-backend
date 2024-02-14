class Option < ActiveRecord::Migration[7.0]
  def change
    create_table :options do |t|
      t.string :option_text

      t.timestamps
    end
  end
end
