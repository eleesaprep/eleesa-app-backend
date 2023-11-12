class ResponseSerializer < ActiveModel::Serializer
  attributes :id, :response_text, :is_correct, :marks_obtained
  belongs_to :user
  belongs_to :question
end
