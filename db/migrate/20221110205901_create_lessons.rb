class CreateLessons < ActiveRecord::Migration[6.1]
  def change
    create_table :lessons do |t|
      t.string :name
      t.string :lesson_type
      t.string :author
      t.integer :duration
      t.string :section
      t.string :subject
      t.string :source

      t.timestamps
    end
  end
end
