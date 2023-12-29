class OptionSerializer < ActiveModel::Serializer
  attributes :id, :option_text
  belongs_to :question
end
