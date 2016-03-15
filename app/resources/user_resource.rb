class UserResource < JSONAPI::Resource
	attributes :email, :year_group
	filters :year_group
end