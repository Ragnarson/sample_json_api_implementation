class ArtistsController < ApplicationController
  def index
    artists = Artist.all
    render json: ArtistRepresenter.for_collection.prepare(artists)
  end

  def show
    artist = Artist.find(params[:id])
    render json: ArtistRepresenter.prepare(artist)
  end
end
