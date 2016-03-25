class ClassroomsController < ApplicationController
	include JSONAPI::ActsAsResourceController 



	def join
		classroom = Classroom.find(params[:classroom_id])
		if classroom.users.include? current_user then
			classroom.users -= [current_user]
			current_user.classrooms -= [classroom]
		else
			classroom.users.push(current_user)
			current_user.classrooms.push(classroom)
		end
		render json: current_user
	end

	def context
	    {current_user: current_user}
	end
end
