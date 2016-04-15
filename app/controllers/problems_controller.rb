class ProblemsController < ApplicationController
	before_action :authenticate_user!
	include JSONAPI::ActsAsResourceController 

	def context
	    {current_user: current_user}
	end
end
