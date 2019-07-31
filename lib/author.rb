class Author 
  attr_accessor :name 
  
  def initialize(name)
    @name = name
  end
  
  def posts 
    Song.all.select {|song| song.artist == self}
  end
  
end