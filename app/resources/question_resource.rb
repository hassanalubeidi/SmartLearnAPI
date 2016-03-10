class QuestionResource < JSONAPI::Resource
  attributes :html, :position, :out_of, :objectives
  has_one :main_question
end