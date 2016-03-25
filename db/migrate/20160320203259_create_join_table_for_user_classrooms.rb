class CreateJoinTableForUserClassrooms < ActiveRecord::Migration
  def change
  	create_table :users_classrooms, id: false do |t|
      t.integer :user_id
      t.integer :classroom_id
    end
 
    add_index :users_classrooms, :user_id
    add_index :users_classrooms, :classroom_id
  end
end
