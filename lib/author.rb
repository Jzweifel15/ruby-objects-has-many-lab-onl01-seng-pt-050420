class Author 
  
  attr_accessor :name
  
  @@post_count = 0
  
  def initialize(name)
    @name = name 
  end
  
  def add_post(display)
    display.author = self
  end
  
  def posts 
    Posts.all.select {|display| display.author == self}
  end
  
  def add_post_by_title(title)
    display = Post.new(title)
    add_post(display)
    @@post_count += 1
  end
  
  def self.post_count
    return @@post_count
  end
  
end