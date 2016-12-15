require 'rails_helper'

RSpec.feature "User edits a playlist" do
  scenario "and sees all clickable playlist links" do
    song_one, song_two, song_three = create_list(:song, 3)

    playlist_name = create(:playlist)
    new_name = "new playlist"

    visit playlists_path

    expect(page).to have_content playlist_name.name
    expect(page).to have_link playlist_name.name

    click_on playlist_name.name
    save_and_open_page
    fill_in "playlist_name", with: new_name
    check("song-#{song_three.id}")
    click_on "Update Playlist"

    expect(page).to have_content new_name
    # test that song selection was also updated
  end
end