class AddSubjectIdToClassrooms < ActiveRecord::Migration
  def change
  	add_column :classrooms, :subject_id, :integer
  	add_column :classrooms, :year_group, :string
  end
end
