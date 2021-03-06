require 'rails_helper'

RSpec.feature "User creates a song" do
  scenario "through entering correct data" do
    artist = create(:artist)
    song_title = "One Love"
    visit artist_path(artist)
    click_on "New song"
    fill_in "song_title", with: song_title 
    click_on "Create Song"
    expect(page).to have_content song_title
    expect(page).to have_link artist.artist_name, href: artist_path(artist)
  end

  scenario "through entering incorrect data" do 
    artist = create(:artist)

    visit artist_path(artist)
    click_on "New song"
    click_on "Create Song"
    
    expect(page).to have_content("Title cannot be blank")
  end
end