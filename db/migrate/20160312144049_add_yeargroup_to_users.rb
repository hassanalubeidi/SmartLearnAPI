class AddYeargroupToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :year_group, :string
  end
end
