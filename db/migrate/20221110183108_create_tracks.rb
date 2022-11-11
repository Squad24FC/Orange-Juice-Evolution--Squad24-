class CreateTracks < ActiveRecord::Migration[6.1]
  def change
    create_table :tracks do |t|
      t.string :name, null: false, default: ""
      t.string :thumb_url, null: false, default: ""
      t.text :description, null: false, default: ""

      t.timestamps
    end
  end
end
