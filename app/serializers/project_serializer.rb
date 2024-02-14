class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :img_url, :description, :project_rating, :user_id
  belongs_to :user
end
