require 'pry'
class Artist
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @songs = []
    @name = name
    @@all << self 
  end
  
  def self.all 
    @@all 
  end 
  
  def new_song(name, genre)
    song = Song.new(name, self, genre)
   end 
  
  def songs 
    Song.all.select do |song|
    song.artist == self
    end
  end 

  def genres      
    
    self.songs.collect do |song|
      song.genre 
    end 
    
    #array_genres = []
    
    #Song.all.each do |song|
    #  if song.artist == self 
    #     array_genres << song.genre 
    #  end 
    #end
    #array_genres 
     # binding.pry 
  end 
  
end

