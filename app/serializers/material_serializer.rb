class MaterialSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :file_url, :upload_date, :uploaded_by
  belongs_to :course
end
