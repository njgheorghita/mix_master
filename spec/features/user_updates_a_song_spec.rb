require 'rails_helper'

RSpec.feature "User updates a song" do
  scenario "from the song show page" do
    artist = create(:artist)
    song_title = "One Love"
    visit artist_path(artist)
    click_on "New song"
    fill_in "song_title", with: song_title 
    click_on "Create Song"
    expect(page).to have_content song_title
    expect(page).to have_link artist.artist_name, href: artist_path(artist)

    click_on "Edit song"
    updated_title = "two loves"
    fill_in "song_title", with: updated_title
    click_on "Update Song"
    expect(page).to have_content updated_title
    expect(page).to have_link artist.artist_name, href: artist_path(artist)
  end
end