class UserResource < JSONAPI::Resource
	attributes :email, :year_group, :classrooms, :part_of_classroom, :sign_in_count, :current_sign_in_at
	has_many :classrooms
	filters :year_group

	
end