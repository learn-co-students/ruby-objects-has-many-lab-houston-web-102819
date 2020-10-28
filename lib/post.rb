class Post

    @@all = []

    def initialize(title)
        @title = title
        @@all.push(self)
    end

    def title
        @title
    end

    def self.all
        @@all
    end

    def author
        @author
    end

    def author= (value)
        @author = value
    end

    def author_name
        author.name if author
    end

    def title= (value)
        @title = value
    end
end
