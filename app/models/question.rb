class Question < ActiveRecord::Base
	has_many :answers, dependent: :destroy
	belongs_to :main_question

	def objectives
		self.main_question.objectives
	end

	def answer(user)
		self.answers.where(user_id: user.id)
	end
	def test_paper
		self.main_question.test_papers.last
	end
end
