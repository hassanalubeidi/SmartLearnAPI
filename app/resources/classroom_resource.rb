class ClassroomResource < JSONAPI::Resource
  attributes :title, :users, :joined

  def joined
  	if @model.users.include? context[:current_user] then
  		return true
  	else
  		return false
  	end
  end
end