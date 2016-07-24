class AlbumMapper < Yaks::Mapper
  attributes :id, :name, :release_date

  has_one :artist, mapper: SimpleArtistMapper
  has_many :songs, mapper: SimpleSongMapper
end
