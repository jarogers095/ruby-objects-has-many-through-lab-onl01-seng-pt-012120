class Artist
  @@all = []
  attr_accessor(:name)
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all()
    return @@all
  end
  
  def songs()
    return Song.all.select{|song| song.artist == self}
  end
  
  def new_song(name, genre)
    a_song = Song.new(name, self, genre)
    return a_song
  end
  
  def genres()
    artists_genres = Song.all.select do |song|
      if song.artist == self
        return song.genre
      end
    end
    return artists_genres
  end
end
    