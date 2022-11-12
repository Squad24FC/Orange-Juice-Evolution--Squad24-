class AddTrackIdSubjectIdToChapters < ActiveRecord::Migration[6.1]
  def change
    add_reference :chapters, :track, null: false, foreign_key: true
    add_reference :chapters, :subject, null: false, foreign_key: true
  end
end
