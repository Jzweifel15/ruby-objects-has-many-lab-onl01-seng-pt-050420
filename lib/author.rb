class Author 
  
  attr_accessor :name
  
  
  def initialize(name)
    @name = name 
  end
  
  def add_post(display)
    display.author = self
  end
  
  def posts 
    Posts.all.select {|display| display.author == self}
  end
  
  def add_post_by_name(name)
    display = Post.new(name)
    add_post(display)
  end
  
  def self.post_count
    posts.author.count
  end
  
end