class ClassroomsController < ApplicationController
	include JSONAPI::ActsAsResourceController 



	def join
		classroom = Classroom.find(params[:classroom_id])
		if classroom.users.include? current_user then
			classroom.users -= [current_user]
		else
			classroom.users.push(current_user)
		end
		render json: current_user
	end

	def context
	    {current_user: current_user}
	end
end
