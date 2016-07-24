class SimpleSongMapper < Yaks::Mapper
  type "song"

  attributes :id, :name, :release_date, :lyrics
end
