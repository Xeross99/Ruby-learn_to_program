def say_moo(numbers_of_moos)
  puts "Moooooo... " * numbers_of_moos
end

def double_this(num)
  num_times_2 = num*2
  puts "num #{num} doubled is #{num_times_2}"
end

say_moo(10) 
double_this(44) 
puts

tough_var = "You can't even touch my variable!"
def little_pest(tough_var)
  tough_var = nil
  puts "HAHA! I ruined your variable!"
end

little_pest(tough_var)
puts tough_var
puts

def moo(number_of_moos)
  puts "moooo..."*number_of_moos
  "Yellow submarine"
end

x = moo(3)
puts x.capitalize + ", dude..."
puts x + "."
puts

# Excercises

# 1. More flavors competing
match_1 = ["vanilla", "chocolate"]
match_2 = ["rhubarb", "pistachio"]
match_3 = ["orange", "milk"]
match_4 = ["berries", "nutty"]
match_5 = []
match_6 = []
match_7 = []
winner = nil

def ask_for_winners(flavors)
  puts "0. " + flavors[0]
  puts "1. " + flavors[1]

  while true
    answer = gets.chomp.downcase

    if (answer == "0" || answer == "1")
      return flavors[answer.to_i]
    else
      puts "Please answer '0' or '1'."
    end
  end
end

puts "Welcome to ULTIMATE FLAVOR TOURNAMENT!"
puts 
puts "Match 1: Which flavor is best?"
match_5[0] = ask_for_winners(match_1)
puts 
puts "Match 2: Which flavor is best?"
match_5[1] = ask_for_winners(match_2)
puts 
puts "Match 3: Which flavor is best?"
match_6[0] = ask_for_winners(match_3)
puts 
puts "Match 4: Which flavor is best?"
match_6[1] = ask_for_winners(match_4)
puts 
puts "Match 5: Which flavor is best?"
match_7[0] = ask_for_winners(match_5)
puts 
puts "Match 6: Which flavor is best?"
match_7[1] = ask_for_winners(match_6)
puts 
puts "CHAMPIONSHIP MATCH!"
puts "Which flavor is best?"
winner = ask_for_winners(match_7)
puts 
puts "And the Ultimate Flavor Champion is:"
puts winner.upcase + "!!"
puts

# 2. Old-school Roman numerals
def old_roman_numeral(num)
  roman = ''
  roman = roman + "M" * ( num       /1000)
  roman = roman + "D" * ( num % 1000/500 )
  roman = roman + "C" * ( num %  500/100 )
  roman = roman + "L" * ( num %  100/50  )
  roman = roman + "X" * ( num %   50/10  )
  roman = roman + "V" * ( num %   10/5   )
  roman = roman + "I" * ( num %    5/1   )

  puts roman
end

old_roman_numeral(1999)

def roman_numeral(num)
  thous = (num        / 1000)
  hunds = (num % 1000 / 100 )
  tens  = (num % 100  / 10  )
  ones  = (num % 10         )

  roman = "M" * thous

  if hunds == 9
    roman = roman + "CM"
  elsif hunds == 4
    roman = roman + "CD"
  else
    roman = roman + "D" * (num % 1000 / 500)
    roman = roman + "C" * (num % 500  / 100)
  end

  if tens == 9
    roman = roman + "XC"
  elsif tens == 4
    roman = roman + "XL"
  else
    roman = roman + "L" * (num % 100 / 50)
    roman = roman + "X" * (num % 50  / 10)
  end

  if ones == 9
    roman = roman + "IX"
  elsif ones == 4
    roman = roman + "IV"
  else
    roman = roman + "V" * (num % 10 / 5)
    roman = roman + "I" * (num % 5  / 1)
  end

  roman
end

puts (roman_numeral(1999))