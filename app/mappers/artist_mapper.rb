class ArtistMapper < Yaks::Mapper
  attributes :id, :name, :label

  has_many :albums
end
