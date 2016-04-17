class ProblemResource < JSONAPI::Resource
 	attributes :what_went_wrong, :topic_id, :id, :answer_id, :topic, :answer, :user_id, :timeago, :test_paper, :detail, :objectives, :reviwable

 	has_one :topic

 	filter :user_id

 	def objectives
 		@model.question_objectives(context[:current_user])
 	end

 	def reviewable
 		@model.reviewable(context[:current_user])
 	end
end