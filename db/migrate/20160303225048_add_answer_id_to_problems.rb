class AddAnswerIdToProblems < ActiveRecord::Migration
  def change
  	add_column :problems, :answer_id, :integer
  end
end
