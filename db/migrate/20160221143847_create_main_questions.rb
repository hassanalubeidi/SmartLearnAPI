class CreateMainQuestions < ActiveRecord::Migration
  def change
    create_table :main_questions do |t|

      t.timestamps null: false
    end
  end
end
