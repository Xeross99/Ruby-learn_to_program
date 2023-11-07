time = Time.new
soon = time + 60 #one minute later

puts time
puts soon
puts

puts Time.new(2000,1,1)
puts Time.new(1976,8,3,13,31)

puts Time.utc(1957,11,5)

caps_array = []
caps_hash = {}

caps_array[0] = "Oslo"
caps_array[1] = "Paris"
caps_array[2] = "Madrid"
caps_array[3] = "Rome"
caps_hash["Norway"] = "Oslo"
caps_hash["France"] = "Paris"
caps_hash["Spain"] = "Madrid"
caps_hash["Italy"] = "Rome"

caps_array.each do |city|
  puts city
end

caps_hash.each do |country, city|
  puts "#{country}: #{city}"
end
puts

greetings = ["hello","howdy","hi"]
smoothies = {"mango" => "yum", "garlic" => "yuck"}
puts greetings
puts smoothies
puts smoothies["mango"]
puts 

myself = {"name" => "Chris", "pairs_of_shoes" => 17}
imelda = {"name" => "Imelda", "pairs_of_shoes" => 3400}

people = [myself, imelda]
puts people
puts

numbers = 1..5
puts ([1,2,3,4,5] == numbers.to_a) #true
("a".."z").each do |letter|
  print letter
end
puts

god_bless_the_90s = 1990..1999
puts god_bless_the_90s.min
puts god_bless_the_90s.max
puts (god_bless_the_90s.include?(1999))
puts (god_bless_the_90s.include?(2000))
puts (god_bless_the_90s.include?(1994.5))
puts 

bosco = "Mr. T"
big_T = bosco[4]
puts big_T
puts 

puts "Hello. My name is Apollo."
puts "I'm extremely perceptive."
puts "What's your name?"
name = gets.chomp.capitalize
puts "Hi, #{name}."

if name[0] == "C"
  puts "You have excellent taste in footwear."
  puts "I can just tell."
end 
puts

prof =  "We tore the universe a new space-hole, alright"
puts prof[12, 8]
puts prof[12..19]
puts 

def is_avi?(filename)
  filename.downcase[-4..-1] == ".avi"
end

puts is_avi?("DANCEMONKEY.AVI")
puts is_avi?("toilet_paper_fiasco.jpg")


# Excercises

# 1. one bilion seconds
puts "My birthsday is 1999 09 28. When I survive 1 billion seconds there will be a date: #{Time.new(1999,9,28) + 1000000000}"

# 2. Happy Birthday!
puts "Enter your birthday:"
puts "Year:"
year = gets.chomp
puts "Month:"
month = gets.chomp
puts "Day:"
day = gets.chomp

birthday = Time.new(year, month, day)
age_in_seconds = Time.now - birthday
age_in_years = age_in_seconds / 60 / 60 / 24 / 365
puts "You are #{age_in_years.to_i} years old."

(1..age_in_years.to_i).each do |i|
  puts "#{i}. :)".rjust(6)
end
puts

# 3. Roman to integer

def roman_to_integer(roman)
  total = 0
  prev = 0
  index = roman.length - 1 

  value = {
    "I" => 1,
    "V" => 5,
    "X" => 10,
    "L" => 50,
    "C" => 100,
    "D" => 500,
    "M" => 1000
  }

  while index >= 0
    c = roman[index].upcase
    index -= 1
    val = value[c]
    
    if !val
      puts "This is not a valid roman numeral!"
      return
    end

    if val < prev
      val = val * -1
    else
      prev = val
    end

    total = total + val
  end
    
  puts total.to_s
end

roman_to_integer("MCMXCIX")
puts

# 4. Birthday helper!
filename = "Chapter 10 - text.txt"
birth_dates = {}

if File.exist?(filename)
  read_string = File.read(filename)

  read_string.each_line do |line|
    name_index = 0
    line = line.chomp

    while line[name_index] != ","
      name = line[0..name_index]
      name_index += 1
    end

    date = line[-12..-1]
    birth_dates[name] = date 
  end
else 
  puts "ERROR 404 - file '#{filename}' not found."
end

puts birth_dates["Chris Evans"]