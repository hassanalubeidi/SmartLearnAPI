class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :omniauthable
  include DeviseTokenAuth::Concerns::User
  has_many :answers
  has_and_belongs_to_many :classrooms

  def part_of_classroom
		if self.classrooms.count > 0 then
			return true
		end
	end
end
