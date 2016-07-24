class SongSerializer
  include JSONAPI::Serializer

  attributes :name, :release_date, :lyrics

  has_one :album, include_data: true
end
