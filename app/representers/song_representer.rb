require "roar/json/json_api"

class SongRepresenter < Roar::Decorator
  include Roar::JSON::JSONAPI
  type :songs

  property :id
  property :name
  property :release_date
  property :lyrics

  has_one :album do
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
  end
end
