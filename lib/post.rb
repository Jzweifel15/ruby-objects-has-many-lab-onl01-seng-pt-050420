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
    if author
      return self.author.name
    else
      return nil 
    end
  end

end