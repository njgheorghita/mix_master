require 'rails_helper'

RSpec.feature "User shows artist" do
  scenario "they view index and individual artist show links" do
    Artist.create(artist_name:"Bob Marley", artist_image_path: "https://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg")
    visit artists_path
    click_on "Bob Marley"

    #expect(page).to have_current_path("/artists/1")
    expect(page).to have_content("Bob Marley")
  end
end