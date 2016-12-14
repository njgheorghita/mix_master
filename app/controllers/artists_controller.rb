class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def show
    @artist = Artist.find(params[:id])
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

  def edit
    @artist = Artist.find(params[:id])
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

  def artist_params
    params.require(:artist).permit(:artist_name, :artist_image_path)
  end
end
