class TestPaper < ActiveRecord::Base
	has_and_belongs_to_many :main_questions, :dependent => :destroy
	belongs_to :subject

	validates :title, presence: true
	def questions
		questions = []
		main_questions.each {|mq| questions.push *mq.questions}
		return questions
	end
end
