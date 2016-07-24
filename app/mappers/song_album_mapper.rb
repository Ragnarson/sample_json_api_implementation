class SongAlbumMapper < Yaks::Mapper
  type "album"

  attributes :id, :name, :release_date

  has_one :artist, mapper: SimpleArtistMapper
end
