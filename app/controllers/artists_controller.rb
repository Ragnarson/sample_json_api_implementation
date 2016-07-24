class ArtistsController < ApplicationController
  def index
    artists = Artist.all
    render json: yaks.call(artists)
  end

  def show
    artist = Artist.find(params[:id])
    render json: yaks.call(artist)
  end
end
