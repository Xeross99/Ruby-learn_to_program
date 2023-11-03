gems = ["Pearl", "Garnet", "Amethyst"]

puts gems
puts              #blank
puts gems[1]
puts gems[2]
puts gems[3]      #Out of range

languages = ["English", "Polish", "Ruby", "Norwegian", "German"]

languages.each do |language|
  puts "I love #{language}! You don't?"
end
puts

3.times do 
  puts "Hip-Hip-Hooray!"
end
puts

foods = ["Artichoke", "brioche", "caramel"]
puts foods                          # Artichoke
                                    # brioche
                                    # caramel
puts 
puts foods.to_s                     # ["Artichoke", "brioche", "caramel"]
puts 
puts foods.join(", ")               # Artichoke, brioche, caramel
puts 
puts foods.join(" :) ") + " 8)"     # Artichoke :) brioche :) caramel 8)
puts 

favorites = []
favorites.push("raindrops on roses")
favorites.push("whiskey on kittens")
puts favorites.join(", ")
puts
puts favorites[0]
puts favorites.last
puts favorites.length

puts favorites.pop
puts favorites
puts favorites.length
puts

# Excercises

# 1. Building and sorting an array

puts "Enter some words:"
words = []

while true
  words.push(gets.chomp)
  if words.last == ""
    words.pop
    puts words.sort
    break
  end
end

# 2. Table of contents, revisited
title = "Table of Contents"

informations = [
  ["Numbers",   1],
  ["Letters",   5],
  ["Variables", 9]
]
num=0
puts title.center(50)

informations.each do |info|
  num += 1
  puts "Chapter #{num}: #{info[0].ljust(30) + ("Page: " + info[1].to_s).rjust(20)}"
end