require 'rails_helper'

RSpec.feature "User creates a playlist" do
  scenario "starting from playlist index" do
    song_one, song_two, song_three = create_list(:song, 3)

    playlist_name = "My Jams"

    visit playlists_path
    click_on "New playlist"
    fill_in "playlist_name", with: playlist_name
    check("song-#{song_one.id}")
    check("song-#{song_three.id}")
    click_on "Create Playlist"

    expect(page).to have_content playlist_name
    expect(page).to have_link song_one.title

  end
end