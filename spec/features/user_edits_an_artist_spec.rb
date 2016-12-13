require 'rails_helper'

RSpec.feature "User edits an artist" do
  scenario "they go to artist edit page and update info" do
    Artist.create(artist_name:"Bob Marley", artist_image_path: "https://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg")

    visit artists_path
    expect(page).to have_content("Bob Marley")

    click_on "Edit"
    #expect(page).to have_current_path("/artists/1/edit")
    
    fill_in "Artist name", :with => "Bobby Marley"
    click_on "Update"
    expect(page).to have_current_path("/artists")
    expect(page).to have_content("Bobby Marley")
  end 
end