class AddCompletedToLessons < ActiveRecord::Migration[6.1]
  def change
    add_column :lessons, :completed, :boolean, default: false
  end
end
