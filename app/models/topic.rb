class Topic < ActiveRecord::Base
	belongs_to :unit

	has_many :objectives

	validates :title, presence: true

	def progress(user)
		progress_total = 0.0
		progress_mean = 0.0
		self.objectives.each do |objective|
			progress_total += objective.progress(user).to_f
		end
		unless self.objectives.count == 0 then
			progress_mean = progress_total.to_f / self.objectives.count.to_f
		end
		return progress_mean
	end
end
