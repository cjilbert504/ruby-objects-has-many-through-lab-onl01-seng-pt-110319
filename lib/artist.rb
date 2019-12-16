class Artist

attr_accessor :name

@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |songs|
      songs.artist == self
    end
  end

    def new_song(name, genre)
      Song.new(name, self, genre)
    end

    def genres
      Genre.all.select do |genre|
        genre.artist == self
      end
    end

end
