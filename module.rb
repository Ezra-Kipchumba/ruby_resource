module Dance
    def twirl
    "I'm twirling!"
  end

  def jump
    "Look how high I'm jumping!"
  end

  def pirouette
    "I'm doing a pirouette"
  end

  def take_a_bow
    "Thank you, thank you. It was a pleasure to dance for you all."
  end
end


# Including the module in our classes

class Kid
    include Dance
    
    attr_accessor :name

    def initialize(name)
        @name = name
    end

end


class Dancer
   include Dance

   attr_accessor :name

   def initialize(name)
       @name = name
   end

end


angelina = Kid.new("Angelina")
mikhail_baryshnikov = Dancer.new("Mikhail")

puts "#{angelina.name} says: #{angelina.twirl}"
puts "#{mikhail_baryshnikov.name} says: #{mikhail_baryshnikov.take_a_bow}"



# Extending module methods as class methods 

module MetaDancing

  # use of extend key word

  def metadata
    "This class produces objects that love to dancing."
  end
end

class Dancing
  extend MetaDancing
end

class Kidding
  extend MetaDancing
end

puts Dancing.metadata
puts Kidding.metadata


# NameSpacing modules

# refactoring the two modules into one, and use module namespacing to clarify how our code should be used.

module FancyDance
  module InstanceMethods

    def twirl
      "I'm twirling!"
    end

    def jump
      "Look how high I'm jumping!"
    end

    def pirouette
      "I'm doing a pirouette"
    end

    def take_a_bow
      "Thank you, thank you. It was a pleasure to dance for you all."
    end
  end

  module ClassMethods

    def metadata
      "This class produces objects that love to dance."
    end
  end
end


# namespaced modules or classes with ::. This syntax references the parent and child relationship of the nested modules.

class Dancer
  extend FancyDance::ClassMethods
  include FancyDance::InstanceMethods
end

class Kid
  extend FancyDance::ClassMethods
  include FancyDance::InstanceMethods
end

# Inheritance Vs NameSpacing
# Inheritance using the < syntax implies that a class is a type of another class. A BMW class should inherit from a Car class because a BMW is a type of car: class BMW < Car.
# The :: syntax just denotes a namespace. Doing BMW::Car just gives the BMW class access to all constants, instance methods, etc, without stating that a BMW is a type of car.
# The :: syntax carries all public items over to the inheriting class or module.





