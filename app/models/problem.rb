class Problem < ActiveRecord::Base
	include ActionView::Helpers::DateHelper

	belongs_to :topic
	belongs_to :answer
	belongs_to :user

	validates :what_went_wrong, presence: true
	validates :topic_id, presence: true

	def timeago
		return time_ago_in_words(self.created_at)
	end
end
