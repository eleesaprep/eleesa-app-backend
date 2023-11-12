class OptionSerializer < ActiveModel::Serializer
  attributes :id, :option_text, :is_correct
  belongs_to :question
end
