class Genre
  @@all = []
  attr_accessor(:name, :songs, :artists)
  
  def initialize(name, songs)
    @name = name
    @songs = songs
    @@all << self
  end
  
  def self.all()
    return @@all
  end
end
  