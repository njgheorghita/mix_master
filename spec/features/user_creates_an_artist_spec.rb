require 'rails_helper'

RSpec.feature "User submits a new artist" do
  scenario "they enter data to create a new artist" do
    artist_name = "Bob Marley"
    artist_image_path = "https://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg"
  
    visit artists_path
    click_on "New artist"
    fill_in "Artist name", with: artist_name
    fill_in "Artist image path", with: artist_image_path
    click_on "Create Artist"
  end

  context "the submitted data is invalid" do
    scenario "they see an error message" do
      artist_image_path = "https://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg"

      visit artists_path
      click_on "New artist"
      fill_in "Artist image path", with: artist_image_path
      click_on "Create Artist"

      expect(page).to have_content "Name can't be blank"
    end
  end
end