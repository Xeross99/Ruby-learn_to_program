var1 = 2 
var2 = "5"
puts var1.to_s + var2
puts var1 + var2.to_i
puts ""

puts "15".to_f
puts "99.999".to_f
puts "99.999".to_i
puts "5 is my favorite number!".to_i
puts "Who asked about 5 or whatever?".to_i
puts "Your mama did.".to_f
puts "stringy".to_s
puts 3.to_s
puts ""

puts "my favorite number really is #{2 + 3 + var1}"
puts ""

puts "Hello, there, and what's your name?"
name = gets
puts "Your name is #{name}? What a lovely name!"
puts "Pleased to meet you, #{name}. :)"
puts ""

# .chomp - służy do usuwania znaków nowej lini
puts "Hello, there, and what's your name?"
name = gets.chomp
puts "Your name is #{name}? What a lovely name!"
puts "Pleased to meet you, #{name}. :)"
puts ""

# Excercises

# 1. Ask a person's first, middle and last name. Finally, have the program greet the person using full name.
puts "Your first name:"
firstname = gets.chomp
puts "Your middle name:"
middlename = gets.chomp
puts "Your last name:"
lastname = gets.chomp
puts "Hello, #{ firstname} #{ middlename } #{ lastname }! Great to see You ;)"
puts ""

# 2. Write a number that ask for a person's favorite number. Have your program add 1 to the number
puts "Type Your favorite number:"
favnumber = gets.chomp
puts "Your favorite number is: #{ favnumber.to_i + 1 }"