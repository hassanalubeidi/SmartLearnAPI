class MainQuestion < ActiveRecord::Base
	has_many :questions, dependent: :destroy
	belongs_to :topic
	has_and_belongs_to_many :objectives
	has_and_belongs_to_many :test_papers
end
