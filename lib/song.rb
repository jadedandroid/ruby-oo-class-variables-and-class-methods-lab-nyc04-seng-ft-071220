require "pry"
class Song
    @@count = 0
    @@all_songs = []
    @@all_artists = []
    @@all_genres = []
    attr_reader :name, :artist, :genre 

    def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
     @@all_artists << @artist
     @@all_genres << @genre
     @@count += 1
    end


    def self.count
        return @@count
    end
    def self.genres
        @@all_genres.uniq
    end
    def self.artists
           @@all_artists.uniq
          

    end
    
  def self.artist_count
    artist_count = {}
    @@all_artists.uniq.each do |artist|
      if artist_count[artist] == true
        artist_count[artist] += 1 
      else
        artist_count[artist] = 1
      end
    end
    artist_count
  end
    
    def self.genre_count
      #genres = {}
      @@all_genres.map {|genre|
        
      }

    end
    
  def self.genre_count
    genre_count = {}
    @@all_genres.uniq.each do |genre|
      if !genre_count[genre]
        genre_count[genre] = 1 
      else
        genre_count[genre] += 1
      end
    end
    binding.pry
    genre_count
  end
  
  
end