class CreateChapters < ActiveRecord::Migration[6.1]
  def change
    create_table :chapters do |t|
      t.string :name
      t.string :thumb_url

      t.timestamps
    end
  end
end
