class TopicResource < JSONAPI::Resource
	attributes :title, :progress, :objectives, :unit, :subject
	has_one :unit
	has_many :objectives

	def progress
		user = context[:current_user]
		return @model.progress(user)
	end

	filters :title, :unit_id
end