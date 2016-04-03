class AnswerResource < JSONAPI::Resource
  attributes :marks, :question_id, :user_id

  filters :question_id

  has_many :problems
  has_one :question
end