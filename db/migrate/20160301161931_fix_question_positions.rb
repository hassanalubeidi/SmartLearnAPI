class FixQuestionPositions < ActiveRecord::Migration
  def change
  	remove_column :questions, :position
  	add_column :questions, :position, :string
  end
end
