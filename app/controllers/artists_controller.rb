class ArtistsController < ApplicationController
  def index
    artists = Artist.all
    render json: JSONAPI::Serializer.serialize(artists, is_collection: true, include: ["albums"])
  end

  def show
    artist = Artist.find(params[:id])
    render json: JSONAPI::Serializer.serialize(artist, include: ["albums"])
  end
end
