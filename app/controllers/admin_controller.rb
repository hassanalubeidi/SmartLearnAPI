class AdminController < ApplicationController
	def assign_student
		if current_user_is_an_admin then
			User.find(params[:user_id]).update_attributes({role: "student"})
			render json: User.find(params[:user_id])
		else
			head 401
		end
	end
	def assign_teacher
		if current_user_is_an_admin then
			User.find(params[:user_id]).update_attributes({role: "teacher"})
			render json: User.find(params[:user_id])
		else
			head 401
		end
	end

	private 
	def current_user_is_an_admin
		"admin" == "admin"
	end
end
