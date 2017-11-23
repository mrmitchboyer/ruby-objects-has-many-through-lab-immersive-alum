class Genre
  attr_accessor :name
  attr_reader :songs

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(song)
    @songs << song
  end

  def artists
    self.songs.map { |song| song.artist }.uniq
  end

end
