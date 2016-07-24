class ArtistSerializer
  include JSONAPI::Serializer

  attributes :name, :label

  has_many :albums, include_data: true
end
