class Topic < ActiveRecord::Base
	belongs_to :unit
	has_one :subject, :through => :unit

	has_many :objectives

	validates :title, presence: true

	def progress(user)
		unless self.objectives.count == 0 then
			obj_total = 0.0
			obj_progs = []
			self.objectives.each do |obj|
				obj_prog = obj.progress(user)
				unless obj_prog.nan? || obj_prog == nil then
					obj_progs.push(obj_prog)
				end
			end
			obj_progs.each {|o| obj_total += o}
			return obj_total / obj_progs.count
		end
	end
end
