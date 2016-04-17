class ReviewResource < JSONAPI::Resource
  attributes :status, :problem, :problem_id
end