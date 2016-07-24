class SongsController < ApplicationController
  def index
    songs = Song.all
    render json: yaks.call(songs)
  end

  def show
    song = Song.find(params[:id])
    render json: yaks.call(song)
  end
end
