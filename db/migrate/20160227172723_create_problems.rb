class CreateProblems < ActiveRecord::Migration
  def change
    create_table :problems do |t|
      t.text :what_went_wrong

      t.timestamps null: false
    end
  end
end
