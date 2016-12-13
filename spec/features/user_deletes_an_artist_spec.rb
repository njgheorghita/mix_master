require 'rails_helper'

RSpec.feature "User deletes an artist" do
  scenario "by clicking on delete from index" do
    Artist.create(artist_name:"Bob Marley", artist_image_path: "https://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg")

    visit artists_path
    expect(page).to have_content("Bob Marley")

    click_on "Delete"
    expect(page).to have_current_path("/artists")
    expect(page).not_to have_content("Bob Marley")
  end 

  scenario "by clicking on delete from show" do
    Artist.create(artist_name:"Bob Marley", artist_image_path: "https://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg")

    visit artists_path
    expect(page).to have_content("Bob Marley")

    click_on "Bob Marley"
    #expect(page).to have_current_path("/artists/1/edit")
    
    click_on "Delete"
    expect(page).to have_current_path("/artists")
    expect(page).not_to have_content("Bob Marley")
  end 
end