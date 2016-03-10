class Subject < ActiveRecord::Base
	has_many :units
	has_many :test_papers

	validates :title, presence: true
end
