# A class method is defined as such:

class Album

  @@album_count = 0

  def initialize
    @@album_count += 1
  end

  def self.album_count
    @@album
  end
  
end


# Class Constants

# defined with all capital letters
# its used to dtore dat athat does not change while class variables store data that does change


class Album
  GENRES = ["Hip-Hop", "Pop", "Jazz"]

  @@album_count = 0

  def initialize(genre)
    if GENRES.include?(genre)
      @@album_count += 1
    end
  end

  def self.count
    @@album_count
  end
end

# scope-wise they can be accessed from outside class using this syntax:
# Album::GENRES