class Problem < ActiveRecord::Base
	belongs_to :topic

	validates :what_went_wrong, presence: true
	validates :topic_id, presence: true
end
