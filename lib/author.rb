class Author 
  
  attr_accessor :name

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    Post.all.select {|display| display.author == self}
  end

  def add_post(display)
    @posts.push(display)
    display.author = self
  end

  def add_post_by_title(post_title)
    display = Post.new(post_title)
    @posts.push(display)
    display.author = self
  end

  def self.post_count
    return Post.all.count
  end
  
end