class Answer < ActiveRecord::Base
	has_many :problems, dependent: :destroy
	belongs_to :user
	belongs_to :question
end
