class Post 

  attr_accessor :name, :author, :title
  
  @@all = []
  
  def initialize(title)
    @title = title
    @name = name
    @author = author
    save
  end
  
  def save
    return @@all.push(self)
  end
  
  def self.all
    return @@all
  end
  
  def author_name
    return self.author.name
  end

end