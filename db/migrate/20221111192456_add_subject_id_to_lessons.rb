class AddSubjectIdToLessons < ActiveRecord::Migration[6.1]
  def change
    add_reference :lessons, :subject, null: false, foreign_key: true
  end
end
