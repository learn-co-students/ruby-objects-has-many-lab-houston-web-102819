class Author

    attr_accessor :name, :posts

    @@all = []


    def initialize(name)
        @name = name
        @posts = []
        @@all << self
    end

    def self.all
        @@all
    end

    def posts
        results = []
        Post.all.each do |post|
            if (post.author == self)
                results << post
            end
        end
        return results
    end

    def add_post(post)
        post.author = self
    end


    def add_post_by_title(title)
        new = Post.new(title)
        new.author = self
    end
    
    def self.post_count
        Post.all.count

    end



end
