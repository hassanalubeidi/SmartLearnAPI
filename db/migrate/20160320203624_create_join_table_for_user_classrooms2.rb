class CreateJoinTableForUserClassrooms2 < ActiveRecord::Migration
  def change
  	create_table :classrooms_users, id: false do |t|
      t.integer :user_id
      t.integer :classroom_id
    end
 
    add_index :classrooms_users, :user_id
    add_index :classrooms_users, :classroom_id

    drop_table :users_classrooms
  end
end
