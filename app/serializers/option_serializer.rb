class OptionSerializer < ActiveModel::Serializer
  attributes :id, :option_text, :question_id
  belongs_to :question
end
