class Artist
  @@all = []

  attr_accessor :name, :songs, :artist

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.each do |song| 
      if song.artist == self
        @songs << song
      end
    end
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(song)
    song = Song.new(song)
    song.artist = self
  end


  def self.song_count
    Song.all.length
  end
end 

# class Song
#   @@all = []
  
#   attr_accessor :song

#   def initialize(song)
#      @song
#      @@all.push(self)
#   end

#   def self.all
#     @@all
#   end
  
#   def artist=(name)
#     @artist = name
#   end

# end