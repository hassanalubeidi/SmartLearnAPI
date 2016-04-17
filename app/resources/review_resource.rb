class ReviewResource < JSONAPI::Resource
  attributes :status, :user, :problem
  has_one :main_question
end