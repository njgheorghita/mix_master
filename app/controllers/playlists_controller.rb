class PlaylistsController < ApplicationController
  def index
    @playlists = Playlist.all
    @popular_songs = Playlist.most_popular_song
    @popular_artists = Playlist.most_popular_artist
  end

  def new
    @playlist = Playlist.new
    @songs = Song.all
  end

  def create
    new_playlist = Playlist.new(playlist_params)

    if new_playlist.save
      redirect_to playlist_path(new_playlist.id)
    else
      @errors = "please choose a song"
      @playlist = Playlist.new
      @songs = Song.all
      render :new
    end
  end

  def edit
    @playlist = Playlist.find(params[:id])
    @songs = Song.all
  end

  def update
    Playlist.update(params[:id], playlist_params)
    redirect_to playlist_path(params[:id])
  end

  def show
    @playlist = Playlist.find(params[:id])
    @songs = Song.find(@playlist.song_ids)
  end

  def destroy
    Playlist.delete(params[:id])
    redirect_to playlists_path
  end

  private

  def playlist_params
    params.require(:playlist).permit(:name, :song_ids => [])
  end
end
