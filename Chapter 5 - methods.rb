var1 = "stop"
var2 = "deliver repaid desserts"
var3 = "...TCELES B HSUP - A magic spell?"

puts var1.reverse
puts var2.reverse
puts var3.reverse
puts var1
puts var2
puts var3
puts ""

puts "What is Your full name?:"
name = gets.chomp
puts "Did you know there are #{name.length} characters"
puts "in your name, #{name}?"
puts""

puts "What is Your name?:"
firstname = gets.chomp
puts "What is Your surname?:"
surname = gets.chomp
letters = firstname.length + surname.length
puts "Did you know there are #{letters} letters in your name and surname?"
puts ""

letters = "aAbBcCdDeEfFgG"
puts letters.upcase
puts letters.downcase
puts letters.swapcase
puts letters.capitalize
puts " a".capitalize
puts letters
puts ""

line_width = 50
puts ("Old Mother Hubband".center(line_width))
puts ("Sat in her cupboard".center(line_width))
puts ("Eating her curds and whey".center(line_width))
puts ("When along came a spider".center(line_width))
puts ("Who sat down beside her".center(line_width))
puts ("And scared her poor shoe dog away".center(line_width))
puts ""

line_width = 40
str = "==> text <=="
puts (str.ljust(line_width))
puts (str.center(line_width))
puts (str.rjust(line_width))
puts (str.ljust(line_width/2) + str.rjust(line_width/2))
puts ""

puts 5**2
puts 5**0.5
puts 7/3
puts 7%3
puts (5-2).abs
puts (2-5).abs
puts ""

puts rand
puts rand
puts (rand(1000))
puts (rand(10))
puts ("My weather app said there is a")
puts ("#{rand(101)}% chance of rain")
puts ""

srand (1976)
puts (rand(100))
puts (rand(100))
puts (rand(100))
puts "---"
srand (1976)
puts (rand(100))
puts (rand(100))
puts (rand(100))
puts ""

# Excercises

# 1. Write angry boss program
puts "What You want from Your boss?"
request = gets.chomp
puts "WHADDAYA MEAN \"#{request.upcase}\"?!?! YOU'RE FIRED!!!"
puts ""

# 2. table of contents
line_width = 20
puts("Chapter 1: Numbers".ljust(line_width) + "page 1".rjust(line_width))
puts("Chapter 2: Letters".ljust(line_width) + "page 5".rjust(line_width))
puts("Chapter 3: Variables".ljust(line_width) + "page 9".rjust(line_width))