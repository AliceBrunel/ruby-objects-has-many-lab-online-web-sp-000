class Author 
  attr_accessor :name 
  
  def initialize(name)
    @name = name
  end
  
  def posts 
    Post.all.select {|post| post.author == self}
  end
  
  def add_post 
    song = Song.new(name)
    song.artist = self
  end
end