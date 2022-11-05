class Song

  @@count = 0
  @@artists = []
  @@genres = []
  @@artist_count = {}
  @@genre_count = {}

  attr_accessor :name
  attr_accessor :artist
  attr_accessor :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists.push(artist)
    @@genres.push(genre)
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.artist_count
    count_artists = {}
    @@artists.uniq.each do |artist_unique|
      count_artists[artist_unique] = @@artists.count(artist_unique)
    end
    count_artists
  end

  def self.genre_count
    count_genres = {}
    @@genres.uniq.each do |genre_unique|
      count_genres[genre_unique] = @@genres.count(genre_unique)
    end
    count_genres
  end

end