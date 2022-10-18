require 'pry';

# if else

kipchumba = "genius"

student = if kipchumba == "playing"
    "In the field"
elsif kipchumba == "gaming"
        "Playstation"
elsif kipchumba == "eating"
        "Hungry asf"
elsif kipchumba== "cuddling"
        "Needs sex with babygirl Noela"
    else 
        "Studying"
    end
#     binding.pry



dog = "cuddly"

owner = if dog == "hungry"
          "Refilling food bowl."
        elsif dog == "thirsty"
          "Refilling water bowl."
        elsif dog == "playful"
          "Playing tug-of-war."
        elsif dog == "cuddly"
          "Snuggling."
        else
          "Reading newspaper."
        end

#         binding.pry




# Unless statements

timer = 15

unless timer == 0
    puts "Watching Home Alone"
end



# Statement modifiers 

this_year= Time.now.year
puts "Hey, Come on.. its a New Year!" if this_year == 2023


    # unless on statement modifiers
buying_chocolate = "Noela"
puts "Sina Pesa!!" unless buying_chocolate == "Noela"


# Case Statements

dog = "cuddly"

owner = case dog
        when "hungry"
          "Refilling food bowl."
        when "thirsty"
          "Refilling water bowl."
        when "playful"
          "Playing tug-of-war."
        when "cuddly"
          "Snuggling."
        else
          "Reading newspaper."
        end


   # using then to shorten code 

dog = "cuddly"

owner = case dog
        when "hungry" then "Refilling food bowl."
        when "thirsty" then "Refilling water bowl."
        when "playful" then "Playing tug-of-war."
        when "cuddly" then "Snuggling."
        else "Reading newspaper."
        end


