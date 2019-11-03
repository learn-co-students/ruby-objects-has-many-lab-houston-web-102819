class Song

@@all = []


    attr_accessor :name 
     
        def initialize(name)
        @name = name
        save
        end

def save
@@all.push(self)
end


def self.all
@@all

end

def artist=(name)
@artist = name
end

def artist
@artist

end

def artist_name
if artist
self.artist.name

else 
nil   
end

end





end