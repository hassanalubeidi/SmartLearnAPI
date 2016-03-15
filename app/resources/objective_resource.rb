class ObjectiveResource < JSONAPI::Resource
	attribute :title
	has_one :topic
	attribute :progress
	def progress
		user = context[:current_user]
		return @model.progress(user)
	end
end