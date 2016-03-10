class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
