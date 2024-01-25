class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :img_url
      t.string :description
      t.integer :project_rating

      t.timestamps
    end
  end
end
