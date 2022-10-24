class Song

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

 #  we can now build out more functionality in our class that involves the collection of all our songs

  def self.print_all_songs
    self.all.each do |song|
        puts song.name
    end
  end
end


Song.all