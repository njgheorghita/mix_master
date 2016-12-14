require 'rails_helper'

RSpec.feature "User visits artist's page" do
  scenario "they see list of artists songs that are links" do
    artist  = Artist.create(artist_name:"Bob Marley", artist_image_path: "https://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg")
    first   = artist.songs.create(title:"love will keep us together")
    second  = artist.songs.create(title:"i will always love you")

    visit artist_path(artist)

    expect(page).to have_link first.title, href: song_path(first)
    expect(page).to have_link second.title, href: song_path(second)
  end

  scenario "they can delete song from list" do
    artist  = Artist.create(artist_name:"Bob Marley", artist_image_path: "https://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg")
    first   = artist.songs.create(title:"love will keep us together")

    visit artist_path(artist)

    expect(page).to have_link first.title, href: song_path(first)    
    within(".songs") do 
      click_on("Delete")
    end
    expect(page).not_to have_link first.title, href: song_path(first)
  end
end