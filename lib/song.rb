require 'pry'
class Song
  attr_accessor :name, :genre, :artist

  def initialize(name, genre)
    @name = name
    @genre = genre
    create_or_find_genre
  end

  def create_or_find_genre
    if Genre.all.include?(self.genre)
      genre = Genre.all.detect { |g| g == self.genre }
    else
      genre = Genre.new(self.genre.name)
    end
    genre.add_song(self)
  end

end
