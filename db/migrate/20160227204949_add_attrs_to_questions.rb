class AddAttrsToQuestions < ActiveRecord::Migration
  def change
  	add_column :questions, :level, :integer
  	add_column :main_questions, :level, :integer

  	add_column :questions, :html, :text
  	add_column :main_questions, :html, :text

  	add_column :questions, :mark_scheme_html, :text
  	add_column :main_questions, :mark_scheme_html, :text

  	add_column :questions, :position, :integer
  end
end
