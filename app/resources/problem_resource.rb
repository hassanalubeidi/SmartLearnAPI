class ProblemResource < JSONAPI::Resource
 	attributes :what_went_wrong, :topic_id, :id, :answer_id, :topic, :answer, :user, :user_id, :timeago, :test_paper, :detail, :objectives, :reviewable, :reviews

 	has_one :topic

 	filter :user_id

 	def objectives
 		@model.question_objectives(context[:current_user])
 	end
end
