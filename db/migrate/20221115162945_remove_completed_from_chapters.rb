class RemoveCompletedFromChapters < ActiveRecord::Migration[6.1]
  def change
    remove_column :chapters, :completed, :boolean
  end
end
