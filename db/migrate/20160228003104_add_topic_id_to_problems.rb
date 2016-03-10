class AddTopicIdToProblems < ActiveRecord::Migration
  def change
    add_column :problems, :topic_id, :integer
  end
end
