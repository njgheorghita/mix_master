require 'rails_helper'

RSpec.feature "User visits songs#index" do
  scenario "they see list of all songs linked to song page" do
    artist  = Artist.create(artist_name:"Bob Marley", artist_image_path: "https://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg")
    first   = artist.songs.create(title:"love will keep us together")
    second  = artist.songs.create(title:"i will always love you")

    visit songs_path

    expect(page).to have_link first.title, href: song_path(first)
    expect(page).to have_link second.title, href: song_path(second)
  end

  scenario "they delete a single song" do
    artist  = Artist.create(artist_name:"Bob Marley", artist_image_path: "https://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg")
    first   = artist.songs.create(title:"love will keep us together")

    visit songs_path

    expect(page).to have_link first.title, href: song_path(first)
    click_on "Delete"
    expect(page).not_to have_link first.title
    
  end
end