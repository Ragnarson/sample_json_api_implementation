class AlbumSerializer < ActiveModel::Serializer
  attributes :name, :release_date

  belongs_to :artist
  has_many :songs
end
