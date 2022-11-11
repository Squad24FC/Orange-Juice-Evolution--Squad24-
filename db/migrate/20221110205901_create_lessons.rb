class CreateLessons < ActiveRecord::Migration[6.1]
  def change
    create_table :lessons do |t|
      t.string :name, null: false, default: ""
      t.string :lesson_type, null: false, default: ""
      t.string :author, null: false, default: ""
      t.integer :duration, null: false, default: ""
      t.string :source_url, null: false, default: ""

      t.timestamps
    end
  end
end
