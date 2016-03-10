class ProblemResource < JSONAPI::Resource
 	attributes :what_went_wrong, :topic_id, :id, :answer_id

 	has_one :topic
 	filters :what_went_wrong
end