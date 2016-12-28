class AddYoutubeToSongs < ActiveRecord::Migration[5.0]
  def change
        add_column :songs, :youtube, :string
  end
end
