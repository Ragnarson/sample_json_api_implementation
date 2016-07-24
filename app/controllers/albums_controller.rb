class AlbumsController < ApplicationController
  def index
    albums = Album.all
    render json: JSONAPI::Serializer.serialize(albums, is_collection: true, include: ["artist", "songs"])
  end

  def show
    album = Album.find(params[:id])
    render json: JSONAPI::Serializer.serialize(album, include: ["artist", "songs"])
  end
end
