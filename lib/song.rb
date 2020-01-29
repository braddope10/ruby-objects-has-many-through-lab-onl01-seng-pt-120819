class Song 

    attr_accessor :name, :artist, :genre

    @@all = [] #knows about all song instances
  
    def initialize(name, artist, genre) #initializes with a name, an aritst, and a genre
      @name = name
      @artist = artist #belongs to an artist
      @genre = genre #belongs to a genre
      @@all << self
    end
  
    def self.all #knows about all song instances
      @@all
    end
end 
  
