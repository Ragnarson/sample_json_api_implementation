class ArtistAlbumMapper < Yaks::Mapper
  type "album"

  attributes :id, :name, :release_date

  has_many :songs, mapper: SimpleSongMapper
end
