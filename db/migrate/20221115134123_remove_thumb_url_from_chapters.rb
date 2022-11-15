class RemoveThumbUrlFromChapters < ActiveRecord::Migration[6.1]
  def change
    remove_column :chapters, :thumb_url, :string
  end
end
