class Song
  
  attr_accessor :artist, :name
 
  @@all = []
 
  def initialize(name)
    @name = name
    @@all << self
  end
 
  def self.all
    @@all
  end
  
  def add_song(song)
    @songs << song
    song.artist = self
  end
  
  def artist_name
    self.artist.name ? self.artist.name 
  end
  
end