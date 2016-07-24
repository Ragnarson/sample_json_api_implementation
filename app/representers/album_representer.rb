require "roar/json/json_api"

class AlbumRepresenter < Roar::Decorator
  include Roar::JSON::JSONAPI
  type :albums

  property :id
  property :name
  property :release_date

  has_one :artist do
    type :artists

    property :id
    property :name
    property :label
  end

  has_many :songs do
    type :songs

    property :id
    property :name
    property :release_date
    property :lyrics
  end
end
