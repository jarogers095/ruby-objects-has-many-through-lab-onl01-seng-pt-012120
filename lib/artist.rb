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
    
  end
  
  def new_song(name, genre)
    
  end
  
  def genres()
    
  end
end
    