puts 1 > 2
puts 1 < 2
puts ""

puts 5 >= 5
puts 5 <= 4
puts ""

puts 1 == 1 
puts 2 != 1
puts ""

puts "cat" < "dog"
puts "a giant woman" < "Waterlemon Steven"
puts "a giant woman".downcase < "Waterlemon Steven".downcase
puts ""

puts "Hello, what's your name?"
name = gets.chomp
puts "Hello, #{name}"

if name == "Chris"
  puts "What a lovely name!"
end
puts ""

puts "I am a fortune-teller. Tel me your name:"
name = gets.chomp

if name == "Chris"
  puts "I see great things in your future"
else
  puts "Your future is...oh my! Look at the time!"
  puts "I really have to go. Sorry!"
end
puts ""


puts "Hello, and welcome to seventh grade English."
puts "My name is Mrs. Gabbard. And your name is...?"
name = gets.chomp

if name == name.capitalize
  puts "Please take a seat, #{name}"
else
  puts "#{name}? You mean #{name.capitalize}, right?"
  puts "Don't you even know how to spell your name??"
end
reply = gets.chomp.downcase

if reply == "yes"
  puts "Hmmm! well #{name.capitalize}, sit down!"
else
  puts "GET OUT #{name.capitalize}!!"
end 
puts ""

input = ""
puts "Say something ..."
while input.downcase != "bye"
  puts input
  input = gets.chomp
end
puts "Come again soon!"
puts ""

puts "Hello, what's your name?"
name = gets.chomp
if name == ("Chris" || "Katy")
  puts "What a lovely name"
end
puts ""

while true 
  puts "What would you like to ask C to do?"
  request = gets.chomp

  puts "You say: C, please #{request}."

  puts "C responds:"
  puts "C #{request}."
  puts "Papa #{request}, too."
  puts "Mama #{request}, too"
  puts "Ruby #{request}, too."

  if request.downcase == "stop"
    break
  end
end
puts ""

# Excercises

# 1. 99 Bottles of Beer on the wall. Write a program that pronts out the lyrick to this beloved classic song
beer = 99
while beer > 1
  puts "#{beer} bottles of beer on the wall, #{beer} bottles of beer.
  Take one down and pass it around, #{beer - 1} bottles of beer on the wall."
  beer -= 1
end
puts "#{beer} bottle of beer on the wall, #{beer} bottle of beer.
Take one down and pass it around, #{beer - 1} bottle of beer on the wall.
No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall."
puts ""


# 2. Deaf Grandma
puts "Say to grandma: "
while true
  grandma = gets.chomp

  if grandma == "BYE"
    bye_counter += 1
    
    if bye_counter == 3
      puts "BYE SWEETIE"
      break
    end
  elsif grandma == grandma.upcase
    # from 0 do 50
    year = rand(51)
    puts "NO, NOT SINCE 19#{year}"
    bye_counter = 0
  else 
    puts "HUH?! SPEAK UP, SONNY!"
    bye_counter = 0
  end
end
puts ""

# 3. Leap years
puts "Starting year: "
date_from = gets.chomp.to_i
puts "to: "
date_to = gets.chomp.to_i
puts "You type a year from #{date_from} to #{date_to}."

while date_from != date_to + 1
  if (date_from % 4 == 0) && (date_from % 100 != 0 || date_from % 400 == 0)
    puts "Check it out, these years are leap years: #{date_from}"
  end
  date_from += 1
end