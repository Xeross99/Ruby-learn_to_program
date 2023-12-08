# 1
toast = Proc.new do
  puts "Cheers!"
end

toast.call
toast.call
toast.call
puts

# 2
do_you_like = Proc.new do |good_stuff|
  puts "I *really* like #{good_stuff}!"
end

do_you_like.call("chocolate")
do_you_like.call("ruby")
puts

# 3
def do_self_importantly(some_proc)
  puts "Everybody just HOLD ON! i'm doing something..."
  some_proc.call
  puts "OK everyone, I'm done. As you were."
end

say_hello = Proc.new do 
  puts "hello"
end

say_goodbye = Proc.new do 
  puts "goodbye"
end

do_self_importantly(say_hello)
do_self_importantly(say_goodbye)
puts

# 4
def mabybe_do(some_proc)
  if(rand(2) == 0)
    some_proc.call
  end
end

def twice_do(some_proc)
  some_proc.call
  some_proc.call
end

wink = Proc.new do 
  puts "<wink>"
end 

glance = Proc.new do 
  puts "<glance>"
end

twice_do(wink)
twice_do(glance)
mabybe_do(wink)
mabybe_do(glance)
puts 

# 5
def do_untill_false(first_input, some_proc)
  output = first_input

  while output
    input = output
    output = some_proc.call(input)
  end
  
  input
end

build_array_of_aquares = Proc.new do |array|
  last_number = array.last

  if last_number <= 0
    false
  else
    # take off the last number
    array.pop

    # ...and replace it with its square
    array.push(last_number*last_number)

    # followed by the next smaller number
    array.push(last_number - 1)
  end
end

puts do_untill_false([5], build_array_of_aquares).inspect

always_false = Proc.new do |just_ignore_me|
  false
end

yum = "lemonade with a hint of orange blossom water"
puts do_untill_false(yum, always_false)
puts

# Excercises

# 1
current_time = Time.now
formatted_time = current_time.strftime("%I")

puts("It's #{current_time.hour}:#{current_time.min}")
formatted_time.to_i.times do 
  puts ("BONG!")
end 

# 2
def profile(block_description, &block)
  start_time = Time.new
  block.call
  duration = Time.new - start_time
  puts "#{block_description}: #{duration} seconds"
end

profile("25000 doublings") do
  number = 1

  25000.times do 
    number += number
  end

  puts "#{number.to_s.length} digits"
end

profile("count to a milion") do
  number = 0

  1000000.times do
    number += 1
  end
end
