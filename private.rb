class Bartender
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def intro
    "Hello, my name is #{name}!"
  end

  def make_drink
    @cocktail_ingredients = []
    self.choose_liquor
    choose_mixer
    choose_garnish
    "Here is your drink. It contains #{@cocktail_ingredients}"
  end

  private

  def choose_liquor
    @cocktail_ingredients << "whiskey"
  end

  def choose_mixer
    @cocktail_ingredients << "vermouth"
  end

  def choose_garnish
    @cocktail_ingredients << "olives"
  end

end


phil = Bartender.new("Phill")
puts phil.make_drink
Bartender.all
