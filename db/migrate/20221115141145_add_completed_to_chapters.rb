class AddCompletedToChapters < ActiveRecord::Migration[6.1]
  def change
    add_column :chapters, :completed, :boolean, default: false
  end
end
