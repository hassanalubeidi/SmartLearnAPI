class AddBelongsToModels < ActiveRecord::Migration
  def change
  	add_column :questions, :main_question_id, :integer
  end
end
