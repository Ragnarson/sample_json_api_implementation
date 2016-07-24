class ArtistSerializer < ActiveModel::Serializer
  attributes :name, :label

  has_many :albums
end
