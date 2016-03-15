class TestPaper < ActiveRecord::Base
	has_and_belongs_to_many :main_questions, :dependent => :destroy
	belongs_to :subject

	validates :title, presence: true
	def questions
		questions = []
		main_questions.each {|mq| questions.push *mq.questions}
		return questions
	end

	def total(user)
		dropped_marks = []
		full_marks = []
		self.main_questions.each do |mq|
			mq.questions.each do |q|
				if q.answers.where(user_id: user.id).count > 0 then
					dropped_marks.push q.answer(user).last.marks
				else
					full_marks.push q.out_of
				end
			end
		end

		# Bug: if user gets full marks, it will return testpaper as unfinished
		if dropped_marks.count != 0 then
			return sum_array(full_marks) + sum_array(dropped_marks)
		else
			return nil
		end
		
	end


	def sum_array(array)
		total = 0
		unless array.count == 0 then
			array.each do |x|
				total += x.to_i
			end
			return total
		end
		return 0
	end
end
