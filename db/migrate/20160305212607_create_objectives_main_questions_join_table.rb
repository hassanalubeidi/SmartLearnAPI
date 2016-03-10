class CreateObjectivesMainQuestionsJoinTable < ActiveRecord::Migration
  def change
    create_table :main_questions_objectives, id: false do |t|
      t.integer :main_question_id
      t.integer :objective_id
    end
 
    add_index :main_questions_objectives, :main_question_id
    add_index :main_questions_objectives, :objective_id
  end
end
