class ProblemResource < JSONAPI::Resource
 	attributes :what_went_wrong, :topic_id, :id, :answer_id, :topic, :answer, :user_id, :timeago, :test_paper, :detail

 	has_one :topic

 	filter :user_id
end