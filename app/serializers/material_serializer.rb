class MaterialSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :file_url, :course_id
  belongs_to :course
end
