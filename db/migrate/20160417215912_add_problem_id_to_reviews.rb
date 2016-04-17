class AddProblemIdToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :problem_id, :integer
  end
end
