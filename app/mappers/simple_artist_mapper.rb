class SimpleArtistMapper < Yaks::Mapper
  type "artist"

  attributes :id, :name, :label
end
