class Dog
  attr_accessor :name, :owner

  def initialize(name)
    @name = name
  end

  def bark
    "Woof!"
  end

  def get_adopted(owner_name)
    self.owner = owner_name
  end

end




# Explicit calling Self
class Dog
  attr_accessor :name, :owner

  def initialize(name)
    @name = name
  end

  def bark
    puts "Woof!"
  end

  def get_adopted(owner_name)
    self.bark # calls the Dog#bark method
    self.owner = owner_name
  end

end




#implicit Self

class Dog
  attr_accessor :name, :owner

  def initialize(name)
    @name = name
  end

  def bark
    puts "Woof! Woof!"
  end

  def get_adopted(owner_name)
    bark # implicit receiver will be self
    self.owner = owner_name
  end

end

fido = Dog.new("Fido")
fido.get_adopted("Sophie")
puts fido.owner