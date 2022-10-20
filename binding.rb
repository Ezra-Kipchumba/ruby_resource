# Debugging with pry

require 'pry'

# Steps
   # 1. Split the string on " " to get access to each word in the sentence
  
   # Join the array of words on " " to create one string

def reverse_each_word(sentence)
    words =  sentence.split
       # biding.pry
   # 2. Reverse each word, and add it to a new array
        # Create a new array

    reversed_words = [];

        # Iterate over the array of words
    words.each do |word|
        # binding.pry
      reversed_words << word.reverse
    end

    # binding.pry

    reversed_words.join(" ")

end

binding.pry
# The 0 is necessary because of some quirky behaviorLinks to an external site. with binding.pry: you can't use a breakpoint as the last line of code in a program.(ensures a breakpoint hit)
0

puts reverse_each_word("Hello there, and how are you?")


# We can also use map 

def reverse_each_word(sentence)
  words = sentence.split

  reversed_words = words.map do |word|
    word.reverse
  end

  reversed_words.join(" ")
end


# using Proc shorthand

def reverse_each_word(sentence)
  words = sentence.split

  reversed_words = words.map(&:reverse)

  reversed_words.join(" ")
end

# Even shorter with

def reverse_each_word(sentence)
  sentence.split.map(&:reverse).join(" ")
end