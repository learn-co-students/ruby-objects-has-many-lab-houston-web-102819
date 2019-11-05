class Author
  @@all = []
  attr_accessor :name
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def posts
    results = []
    Post.all.each do |post|
      post.author == self
        # results.push(post)
    end
    # return results
  end

  def add_post(post)
    if post == nil
      return nil
    else
      post.author = self
    end
  end

  def add_post_by_title(new_title)
    new_object = Post.new(new_title)
    new_object.author = self

    #add_post(title)
    #title.posts
  end

  def self.post_count
    Post.all.length
  end
end

#neil = Author.new("Neil")
#post1 = Post.new("post1") #uninitialized post?

#p neil
#p post1