class CreateObjectives < ActiveRecord::Migration
  def change
    create_table :objectives do |t|
      t.string :title
      t.integer :topic_id
      t.timestamps null: false
    end
  end
end
