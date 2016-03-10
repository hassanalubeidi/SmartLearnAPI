class CreateMainQuestionsTestPapersJoinTable < ActiveRecord::Migration
  def change
  	create_table :main_questions_test_papers, id: false do |t|
      t.integer :test_paper_id
      t.integer :main_question_id
    end
 
    add_index :main_questions_test_papers, :main_question_id
    add_index :main_questions_test_papers, :test_paper_id
  end
end
