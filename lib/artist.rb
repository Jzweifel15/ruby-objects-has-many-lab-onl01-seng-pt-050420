class Artist 

  attr_accessor :name
  
  @@song_count = 0
  
  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def add_post(display)
    @posts.push(display)
    display.author = self
    @@post_count += 1
  end

  def add_post_by_title(post_title)
    display = Post.new(post_title)
    @posts.push(display)
    display.author = self
    @@post_count += 1
  end

  def self.post_count
    @@post_count
  end

end