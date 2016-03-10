class ObjectiveResource < JSONAPI::Resource
	attribute :title
	has_one :topic
	attribute :progress_attr
	def progress_attr
		user = context[:current_user]
		return @model.progress(user)
	end
end