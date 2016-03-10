class AddTopicIDsToMainQuestions < ActiveRecord::Migration
  def change
    add_column :main_questions, :topic_id, :integer
  end
end
