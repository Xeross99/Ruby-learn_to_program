class Array
  def mult
    result = 1
    
    self.each do |numbers|
      result *= numbers 
    end

    result
  end
end
puts [2,3,5].mult
puts

class Die
  # initialize is automatically called
  def initialize
    roll
  end
  
  def roll
    @number = 1 + rand(6)
  end
  
  def show
    @number
  end
end

# dice = [Die.new, Die.new]
# dice.each do |item|
#   puts item.roll
# end

# die = Die.new - create instance 
# die.roll      - roll
# puts die.show - show number from @number 

puts Die.new.show