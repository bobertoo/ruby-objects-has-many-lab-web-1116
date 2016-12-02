class Song
  attr_accessor :artist, :name, :song_count, :artist_name

  def initialize(name)
    @name = name
  end

  def artist_name
    artist ? artist.name : nil
  end
end
