class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
