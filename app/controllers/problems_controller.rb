class ProblemsController < ApplicationController
	before_action :authenticate_user!
	include JSONAPI::ActsAsResourceController 

end
