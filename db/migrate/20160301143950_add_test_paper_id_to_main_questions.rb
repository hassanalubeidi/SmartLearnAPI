class AddTestPaperIdToMainQuestions < ActiveRecord::Migration
  def change
    add_column :main_questions, :test_paper_id, :integer
  end
end
