class MainQuestionResource < JSONAPI::Resource
  attributes :html, :mark_scheme_html
  has_many :questions
end