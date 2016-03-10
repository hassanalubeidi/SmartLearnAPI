class AddOutOfToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :out_of, :integer
  end
end
