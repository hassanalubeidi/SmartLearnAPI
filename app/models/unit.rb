class Unit < ActiveRecord::Base
	belongs_to :subject
	has_many :topics

	validates :title, presence: true
end
