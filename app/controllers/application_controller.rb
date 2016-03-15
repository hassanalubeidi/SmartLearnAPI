class ApplicationController < ActionController::Base
  include DeviseTokenAuth::Concerns::SetUserByToken
  	protect_from_forgery with: :null_session

  	def context
	    {current_user: current_user}
	end
end
