require 'pry'
class Genre
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @artists = []
    @@all << self 
  end

  def self.all 
    @@all 
  end 
  
  def songs
    Song.all.select do |song|
    song.genre == self
  end
  
  end

  def add_song(song)
    @songs << song
  end

  def artists                       
    self.songs.collect do |song|   
      song.artist
    end
  end
  
end