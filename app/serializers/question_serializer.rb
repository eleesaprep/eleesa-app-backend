class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :question_text, :time, :question_type, :correct_answer
  belongs_to :quiz
  has_many :options
end
