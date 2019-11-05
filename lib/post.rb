class Post
  @@all = []
attr_accessor = :author

  def initialize(title) 
    @title = title
    @@all << self
  end

  def title
    @title
  end

  def author
    @author
  end

  def author=(author)
    @author = author
  end

  def self.all
    @@all
  end

  def author_name
    if self.author == nil 
      return nil
    else
      self.author.name
    end
  end
    
    #Author.all.each do |author|
      #if nil
        #return nil
      #else 
        #author.title = self
          #return author.name
      #end
    #end
end