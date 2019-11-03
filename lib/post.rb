class Post

    @@all = []
    
    
        attr_accessor :title
         
            def initialize(title)
            @title= title
            save
            end
    
    def save
    @@all.push(self)
    end
    
    
    def self.all
    @@all
    
    end
    
    def author=(name)
    @author= name
    end
    
    def author
    @author
    
    end
    
    def author_name
    if author
    self.author.name
    
    else 
    nil   
    end
    
    end
    
    
    
    
    
    end