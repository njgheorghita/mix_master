class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :edit]

  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def show
  end

  def edit
  end
  
  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      redirect_to artists_path
    else
      @errors = "Name can't be blank'"
      render :new
    end
  end

  def update
    Artist.update(params[:id], artist_params)
    redirect_to artists_path
  end

  def destroy
    Artist.delete(params[:id])
    redirect_to artists_path
  end
  
  private

  def set_artist
    @artist = Artist.find(params[:id])
  end

  def artist_params
    params.require(:artist).permit(:artist_name, :artist_image_path)
  end
end
