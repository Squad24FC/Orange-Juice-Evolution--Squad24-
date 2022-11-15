class AddProgressToTracks < ActiveRecord::Migration[6.1]
  def change
    add_column :tracks, :progress, :integer, default: 0
  end
end
