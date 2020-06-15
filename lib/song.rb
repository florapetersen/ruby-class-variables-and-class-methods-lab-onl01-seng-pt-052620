require 'pry'
class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
  @@count += 1
  @name = name
  @artist = artist
  @genre = genre
  @@genres << genre
  @@artists << artist
  end

  def self.count
    return @@count
  end

  def self.genres
    @@genres = @@genres.uniq
    return @@genres
  end

  def self.artists
    @@artists = @@artists.uniq
    return @@artists
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |genre_name|
      if genre_count.key?(genre_name)
      else
        genre_count["#{genre_name}"] = @@genres.count(genre_name)
      end
    return genre_count
    end
  end
end
