require 'pry'

class Artist
  attr_accessor :name, :songs
  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all_songs
    @@song_count
  end

  def add_song(song)
    song.artist = self
    self.all_songs(song)
    @songs << song
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    add_song(song)
  end

end
