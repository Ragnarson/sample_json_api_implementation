class SongsController < ApplicationController
  def index
    songs = Song.all
    render json: SongRepresenter.for_collection.prepare(songs)
  end

  def show
    song = Song.find(params[:id])
    render json: SongRepresenter.prepare(song)
  end
end
