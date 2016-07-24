class SongMapper < Yaks::Mapper
  attributes :id, :name, :release_date, :lyrics

  has_one :album
end
