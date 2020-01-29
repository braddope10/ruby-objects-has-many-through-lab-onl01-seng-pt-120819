class Genre 

    attr_accessor :name, :song, :artist

    @@all = [] #knows about all genre instances
  
    def initialize(name)
      @name = name #has a name
      @@all << self
    end
  
    def self.all #knows about all genre instances
      @@all
    end
  
    def new_song(name, artist)
      Song.new(name, artist, self)
    end
  
    def songs #has many songs
      Song.all.select {|song| song.genre == self}
    end
  
    def artists #has many artists, through songs
      songs.collect {|song| song.artist}
    end
end 
