class Problem < ActiveRecord::Base
	include ActionView::Helpers::DateHelper

	belongs_to :topic
	belongs_to :answer
	belongs_to :user

	validates :what_went_wrong, presence: true
	validates :topic_id, presence: true

	def test_paper
		if self.answer == nil then
			return nil 
		else
			return self.answer.question.main_question.test_papers.first
		end
	end

	def detail 
		unless self.test_paper == nil then
			return "#{self.test_paper.title} #{self.answer.question.position} #{self.answer.marks} / #{self.answer.question.out_of}"
		end
	end

	def timeago
		return time_ago_in_words(self.created_at)
	end
end
