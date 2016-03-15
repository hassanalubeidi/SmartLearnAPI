class Problem < ActiveRecord::Base
	belongs_to :topic
	belongs_to :answer
	belongs_to :user

	validates :what_went_wrong, presence: true
	validates :topic_id, presence: true
end
