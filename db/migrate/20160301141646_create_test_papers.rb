class CreateTestPapers < ActiveRecord::Migration
  def change
    create_table :test_papers do |t|
      t.string :title
      t.integer :subject_id

      t.timestamps null: false
    end
  end
end
