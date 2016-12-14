class AddSongIdsToPlaylist < ActiveRecord::Migration[5.0]
  def change
    add_column :playlists, :song_ids, :string, array: true, default: []
  end
end
