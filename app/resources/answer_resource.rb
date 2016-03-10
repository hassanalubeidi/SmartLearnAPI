class AnswerResource < JSONAPI::Resource
  attributes :marks, :question_id, :user_id

  has_many :problems
  has_one :question
end