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
    a_song = Song.new(name, )
  end
  
  def genres()
    
  end
end
    