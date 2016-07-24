class AlbumSerializer
  include JSONAPI::Serializer

  attributes :name, :release_date

  has_one :artist, include_data: true, include_links: false
  has_many :songs, include_data: true, include_links: false
end
