class TestPaperResource < JSONAPI::Resource
  attributes :id, :title, :questions, :subject_id
  has_many :main_questions
  has_one :subject
end