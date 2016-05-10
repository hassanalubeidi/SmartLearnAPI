class TestPaperResource < JSONAPI::Resource
  attributes :id, :title, :questions, :subject_id, :total, :problems
  has_many :main_questions
  has_one :subject

  	def total
		user = context[:current_user]
		return @model.total(user)
	end
end