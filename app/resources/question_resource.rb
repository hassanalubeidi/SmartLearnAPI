class QuestionResource < JSONAPI::Resource
  attributes :html, :position, :out_of, :objectives, :test_paper
  has_one :main_question
end