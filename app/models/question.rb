class Question < ActiveRecord::Base
	has_many :answers, dependent: :destroy
	belongs_to :main_question

	def objectives
		self.main_question.objectives
	end

	def answer(user)
		self.answers.where(user: user)
	end
end
