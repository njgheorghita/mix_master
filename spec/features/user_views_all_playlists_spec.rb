require 'rails_helper'

RSpec.feature "User visits playlist index" do
  scenario "and sees all clickable playlist links" do
    song_one, song_two, song_three = create_list(:song, 3)

    playlist_name = create(:playlist)

    visit playlists_path

    expect(page).to have_content playlist_name.name
    expect(page).to have_link playlist_name.name

  end
end