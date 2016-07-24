class AlbumsController < ApplicationController
  def index
    albums = Album.all
    render json: AlbumRepresenter.for_collection.prepare(albums)
  end

  def show
    album = Album.find(params[:id])
    render json: AlbumRepresenter.prepare(album)
  end
end
