# require 'pry'
class Song
    attr_accessor :name, :artist
    @@all = []

    def initialize(name)
        @name = name
        @artist
        @@all << self
    end


    # def song
    #     return @song
    # end


    # def self.all
    #     return @@all
    # end

    # def name
    #     return @name
    # end

    # def artist
    #     return @artist
    # end

    # def artist=(value)
    #     @artist = value
    # end

    def artist_name
        if @artist == nil
            nil
        else 
            self.artist.name
        end
          
    end

    def self.all
        @@all
    end







end

#  binding.pry