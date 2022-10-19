require 'pry'


#  map method

["this", "is", "Ruby"].map do |astronaut|
    # note using puts returns nill and each value on a new line.
  astronaut.upcase
  # binding.pry
end

users = [{ name: "Duane", phone: "0702681724"}, { name: "Liza", phone: "555-555-5556" }]
users.map do |user|
  "Name: #{user[:name]} | Phone: #{user[:phone]}"
end




# Filter method
words = ["give", "it", nil, "your", nil, "best", "shot"]
filter_words = words.filter do |word|
    word != nil

     # filter returns only the array that meets certain demands
end

capitalize_words = filter_words.map do |word|
    word.capitalize_words
end
  # this will also work the same way
  words.filter { |word| word != nil }.map(&:capitalize)

  # haha want to impress your friends?
  words.compact.map(&:capitalize)




# Accessing the index of an array

["this","is" , "ruby"].map.with_index do |str, index|
    # if index.even?
    if index%2 === 0
        str.upcase
    else
        str
    end
end

  # For single line blocks, consider using this simple syntax
  # e.g add exclamation to each str  

["this", "is", "Ruby"].map { |str| str.upcase + "!"}
 

   # or  you can also use the Proc shorthand syntax
["this", "is", "Ruby"].map(&:upcase )




# Find method

users = [{ name: "Ezra", phone: "0728564126"}, { name: "Sekani", phone: "0799 377 555" }]
users.find do |user|
  user[:name] == "Sekani"
end



# Sort method

users = [
  { name: "Liza", phone: "555-555-5556" },
  { name: "Duane", phone: "555-555-5555"},
  { name: "Cara", phone: "555-555-5556"},
]

#  combined comparison operator, returns:
     # 0 if the first operand equals the second,
     # -1 if the first operand is less than the second, and
     # 1 if the first operand is greater than the second.

users.sort do |user1, user2|
  user1[:name] <=> user2[:name]
end


# Enumerating with Hashes
   # e.g using the each method

book = { title: "The Hobbit", author: "J. R. R. Tolkien", published: 1937 }
book.each do |key, value|
  puts "Key: #{key}"
  puts "Value: #{value}"
end