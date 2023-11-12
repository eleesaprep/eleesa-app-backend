class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :question_text, :question_type
  belongs_to :quiz
  has_many :options
  has_many :responses
end
