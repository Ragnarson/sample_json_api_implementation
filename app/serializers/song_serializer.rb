class SongSerializer < ActiveModel::Serializer
  attributes :name, :release_date, :lyrics

  belongs_to :album
end
