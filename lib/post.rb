class Post 
  
  attr_accessor :title, :song
  
  @@all = []
  
  def initialize(title)
    @title = title
    @@all << self
  end
  
  def self.all 
   @@all
  end
  
  def add_post(post)
    @songs << post
    post.author = self
  end
  
  def author_name
    self.author ? self.author.name : nil
  end
  
  def add_post_by_title(title)
    post = Post.new(title)
    post.artist = self
  end
end