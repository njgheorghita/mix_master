class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit]

  def index
    @songs = Song.all
    @popular = Song.joins(:playlists).order("count_all DESC").group(:id).count
  end

  def random
    random_number = 1 + Random.rand(Song.all.count - 1)
    @song = Song.find(random_number)
    render :show
  end

  def new
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.new
  end

  def create
    @artist = Artist.find(params[:artist_id])
    new_song = @artist.songs.new(song_params)

    if new_song.save
      @song = Song.where(:title=>song_params[:title], :artist_id => params[:artist_id]).first
      redirect_to song_path(@song)
    else
      @errors = "Title cannot be blank"
      @song = @artist.songs.new 
      render :new
    end
  end

  def show
  end

  def edit
    @artist = @song.artist
  end

  def update
    Song.update(params[:id], song_params)
    redirect_to song_path()
  end

  def destroy
    if params["artist_id"]
      @song = Song.find(params[:id])
      @artist = @song.artist
      song.destroy
      redirect_to artist_path(@artist)
    else
      Song.delete(params[:id])
      redirect_to songs_path
    end
  end

  private

  def set_song
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:title)
  end

end
