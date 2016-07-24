class AlbumsController < ApplicationController
  def index
    albums = Album.all
    render json: yaks.call(albums)
  end

  def show
    album = Album.find(params[:id])
    render json: yaks.call(album)
  end
end
