class Problem < ActiveRecord::Base
	include ActionView::Helpers::DateHelper

	belongs_to :topic
	belongs_to :answer
	belongs_to :user

	has_many :reviews

	validates :what_went_wrong, presence: true
	validates :topic_id, presence: true

	def test_paper
		if self.answer == nil then
			return nil 
		else
			return self.answer.question.main_question.test_papers.first
		end
	end

	def reviewable
		if self.reviews.count == 0 then
			created_at = self.created_at
			time_delay = 0.6
		else
			created_at = self.reviews.last.created_at
			if self.reviews.last.status == "correct"
				time_delay = 5.0
			elsif self.reviews.last.status =="incorrect"
				time_delay = 0.5
			end
		end

		return ((Time.now - created_at) / (3600 * 24)) > time_delay
	end

	def detail 
		unless self.test_paper == nil then
			return "#{self.answer.question.position} #{self.answer.marks} / #{self.answer.question.out_of}"
		end
	end

	def position
		if self.answer then
			self.answer.question.position
		end
	end

	def marks
		if self.answer then
			"#{self.answer.marks} / #{self.answer.question.out_of}"
		end
	end
	def question_objectives(user)
		unless self.answer == nil then
			if self.answer(user).question.main_question.objectives.count > 0 then
				self.answer(user).question.main_question.objectives
			else
				nil
			end
		end
	end

	def timeago
		return time_ago_in_words(self.created_at)
	end
end
