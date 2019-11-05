class Artist
    attr_accessor :name, :songs
    @@all = []

    def initialize(name)
        @name = name
        @songs = []
        @@all << self
    end

    # def name=(value)
    #     @name = value
    # end

    def songs
        @songs = []
        Song.all.each do | song |
           if (song.artist == self)
                @songs << (song)
           end
        end
        return @songs
    end

    def add_song(song)
        song.artist = self  
    end

    def add_song_by_name(song_name)
        song = Song.new(song_name)
        song.artist = self
    end

    def self.song_count
        Song.all.length
    end

    def self.all
        @@all
    end
    


end


