class SongsController < ApplicationController
  def index
    songs = Song.all
    render json: JSONAPI::Serializer.serialize(songs, is_collection: true, include: ["album"])
  end

  def show
    song = Song.find(params[:id])
    render json: JSONAPI::Serializer.serialize(song, include: ["album"])
  end
end
