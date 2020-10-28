class Song

    @@all = []

    def initialize(name)
        @name = name
        @@all.push(self)
    end

    def name
        @name
    end

    def self.all
        @@all
    end

    def artist= (value)
        @artist = value
    end

    def artist
        @artist
    end

    def artist_name
        artist.name if artist
    end

end