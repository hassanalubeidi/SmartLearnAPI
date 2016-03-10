class ProblemsController < ApplicationController
	include JSONAPI::ActsAsResourceController 
	before_action :authenticate_user!
end
