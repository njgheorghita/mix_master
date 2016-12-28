class AddSourceToPlaylists < ActiveRecord::Migration[5.0]
  def change
      add_column :playlists, :source, :string
  end
end
