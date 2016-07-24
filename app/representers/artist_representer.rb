require "roar/json/json_api"

class ArtistRepresenter < Roar::Decorator
  include Roar::JSON::JSONAPI
  type :artists

  property :id
  property :name
  property :label

  has_many :albums do
    type :albums

    property :id
    property :name
    property :release_date

    has_many :songs do
      type :songs

      property :id
      property :name
      property :release_date
      property :lyrics
    end
  end
end
