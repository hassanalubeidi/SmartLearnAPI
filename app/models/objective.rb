class Objective < ActiveRecord::Base
	belongs_to :topic
	has_and_belongs_to_many :main_questions
	has_many :questions

	validates :title, presence: true

	def progress(user) #usually user = current_user
		marks = 0
		total_marks = 0
		self.main_questions.each do |mq|
			mq.questions.each do |question|
				unless question.answers.where(:user => user).count == 0 then 
					marks += question.answer(user).last.marks.to_i * time_degredation(question, user)
					total_marks += question.out_of
				end
			end
		end
		return (marks.to_f / total_marks.to_f) * 100 #might give an error if an objective has no question?
	end

	private
	def time_degredation(question, user)
		a = (Time.now -  question.answer(user).last.created_at).to_i / 86400
		return half_life(user, question) ** -(a) # exponentail graph
	end
	def half_life(user, question) # a much more dynamic half life. NOT FINISHED NEEDS TO GET QUESTION.OBJECTIVES.QUESTIONS.COUNT
		d = 30
		x = [].count
		a = 100 #no of iterations till...
		b = 10 #.. x10 default

		return half_life_decay(d * (half_life_growth(a,b) ** x))  #very powerful
	end
	def half_life_decay(steps)
		return 0.5 ** (-1 / steps.to_f )
	end
	def half_life_growth(steps,max)
		return max ** (1 / steps.to_f )
	end
end
