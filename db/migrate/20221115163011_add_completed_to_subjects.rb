class AddCompletedToSubjects < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :completed, :boolean, default: false
  end
end
