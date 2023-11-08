class Dragon
  def initialize(name)
    @name = name
    @asleep = false
    @stuff_in_belly = 10                  # baby is full
    @stuff_in_intensine = 0               # baby doesn't need to go 

    puts "#{@name.capitalize} is born.".center(100)
  end
  
  def feed
    puts "You feed #{@name.capitalize}.".center(100)
    @stuff_in_belly = 10                  # baby is full
    passage_of_time
  end

  def walk
    puts "You walk #{@name.capitalize}.".center(100)
    @stuff_in_intensine = 0               # baby doesn't need to go 
    passage_of_time
  end

  def put_to_bed
    puts "You put #{@name.capitalize} to bed.".center(100)
    @asleep = true
    
    3.times do
      if @asleep
        passage_of_time
      end

      # since passage_of_time might wake up the baby,
      # check to see if they are still asleep
    
      if @asleep
        puts "#{@name.capitalize} snores, filling the room with smoke.".center(100)
      end
    end

    if @asleep
      @asleep = false
      puts "#{@name.capitalize} wakes up slowly.".center(100)
    end
  end
  
  def toss
    puts "You toss #{@name.capitalize} up into air.".center(100)
    puts "#{@name.capitalize} giggles, witch singes your eyebrows.".center(100)
    passage_of_time
  end

  def rock
    puts "You rock #{@name.capitalize} gently.".center(100)
    @asleep = true
    puts "#{@name.capitalize} briefly dozesz off..".center(100)
    passage_of_time
    if @asleep
      @asleep = false
      puts "... but wakes when you stop.".center(100)
    end
  end

  private

  # ? - when method returns true or false
  def hungry?
    @stuff_in_belly <= 2
  end

  def poopy?
    @stuff_in_intensine >= 8
  end

  def passage_of_time
    if @stuff_in_belly > 0
      # move food from belyly to intestine
      @stuff_in_belly = @stuff_in_belly - 1
      @stuff_in_intensine = @stuff_in_intensine + 1
    else
      if @asleep
        @asleep = false
        puts "#{@name.capitalize} wakes up suddenly!".center(100)
      end
    
      puts "#{@name.capitalize} is starving! In desperation, #{@name.capitalize} ate YOU!".center(100)
      exit
    end

    if @stuff_in_intensine >= 10
      @stuff_in_intensine = 0
      puts "Whoops! #{@name.capitalize} had an acctident...".center(100)
    end

    if hungry?
      if @asleep
        @asleep = false
        puts "#{@name.capitalize} wakes up suddenly!".center(100)
      end

      puts "#{@name.capitalize}'s stomach grumbles...".center(100)
    end

    if poopy?
      if @asleep
        @asleep = false
        puts "#{@name.capitalize} wakes up suddenly!".center(100)
      end

      puts "#{@name.capitalize} does the potty dance...".center(100)
    end    
  end
end

def option(name, line_width)
  puts 
  puts "-----------------------------------------------------------------------".center(line_width)
  puts "What would you like to to with your dragon #{name.capitalize}?".center(line_width)
  puts "1. feed".center(line_width)
  puts "2. walk".center(line_width)
  puts "3. put do bed".center(line_width)
  puts "4. toss".center(line_width)
  puts "5. rock".center(line_width)
  puts "------------".center(line_width)
  puts "6. quit game".center(line_width)
  puts "-----------------------------------------------------------------------".center(line_width)
end

line_width = 100
puts
puts "Baby dragon welcomes you!".center(line_width).upcase
puts
print "Enter your name: "
name = gets.chomp
dragon = Dragon.new(name)

while true
  option(name, line_width)
  print "option: "
  dragon_option = gets.chomp

  dragon_actions = {
    "1" => :feed,
    "2" => :walk,
    "3" => :put_to_bed,
    "4" => :toss,
    "5" => :rock
  }

  if dragon_option == "6"
    puts "Sorry you're leaving us :("
    exit
  elsif dragon_actions.key?(dragon_option)
    dragon.send(dragon_actions[dragon_option])
  else
    puts 
    puts "Wrong number!".upcase.center(line_width)
    puts 
  end
end