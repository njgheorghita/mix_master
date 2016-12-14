class SongsController < ApplicationController

  def new
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.new
  end

  def create
    @artist = Artist.find(params[:artist_id])
    @artist.songs.create(song_params)

    @song = Song.where(:title=>song_params[:title], :artist_id => params[:artist_id]).first

    redirect_to song_path(@song)
  end

  def show
    @song = Song.find(params[:id])
  end

  private

  def song_params
    params.require(:song).permit(:title)
  end

end
