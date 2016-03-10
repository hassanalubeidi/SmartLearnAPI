class AddSubjectIdToUnits < ActiveRecord::Migration
  def change
    add_column :units, :subject_id, :integer
  end
end
