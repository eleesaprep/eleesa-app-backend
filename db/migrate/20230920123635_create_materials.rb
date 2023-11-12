class CreateMaterials < ActiveRecord::Migration[7.0]
  def change
    create_table :materials do |t|
      t.string :title
      t.string :description
      t.string :file_url
      t.string :uploaded_by
      t.datetime :upload_date

      t.timestamps
    end
  end
end
