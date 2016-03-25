class UserResource < JSONAPI::Resource
	attributes :email, :year_group, :classrooms, :part_of_classroom
	has_many :classrooms
	filters :year_group

	
end