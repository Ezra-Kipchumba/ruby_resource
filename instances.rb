class Dog
    # setter method
 def name=(value)
    @name = value 
 end

    #getter method
    def name
     # acces data from the @name variable and return it
        @name
    end 
end

odie = Dog.new

odie.name = "Odie"
puts odie.name