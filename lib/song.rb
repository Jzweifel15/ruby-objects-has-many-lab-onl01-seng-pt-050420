class Song 

  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    @artist = artist
    save
  end
  
  def save
    return @@all.push(self)
  end
  
  def self.all
    return @@all
  end
  
  def artist_name
    return self.artist.name
  end
  

end