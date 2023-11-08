class OrangeTree
  def initialize
    @height = 1
    @year = 1
    @orange = 0
    @avaliable_orange = @orange
  end

  def height
    puts
    puts "Height: #{@height}".upcase
    puts
  end

  def year
    puts
    puts "Year: #{@year}".upcase
    puts
  end

  def oranges
    puts
    if orange?
      puts "Oranges: #{@avaliable_orange}".upcase
    else
      puts "There is no any orange :(".upcase
    end
    puts
  end

  def pick_an_orange
    if orange?
      @avaliable_orange -= 1
      puts
      puts "Yummy!".upcase
      puts
    else
      puts
      puts "There is no any orange :(".upcase
      puts
    end
  end

  def one_year_pass
    @year += 1
    @height += 2

    if grows_fruits?
      @orange += 2
      @avaliable_orange = @orange
    end

    if height?
      @height = 12
    end

    if died?
      puts
      puts "Your tree died".upcase
      exit
    end
  end

  private
  
  def orange?
    @avaliable_orange  > 0
  end

  def died?
    @year > 60
  end

  def grows_fruits?
    @year > 2
  end

  def height?
    @height > 12
  end
end

tree = OrangeTree.new

tree_options = {
  "1" => :height,
  "2" => :year,
  "3" => :oranges,
  "4" => :pick_an_orange,
  "5" => :one_year_pass
}


while true
  puts "--------------"
  puts "     INFO"
  puts "--------------"
  puts "1. show height"
  puts "2. show year"
  puts "3. show oranges"
  puts "--------------"
  puts "4. eat orange"
  puts "5. one year pass"
  puts "--------------"
  print "option: "
  option = gets.chomp
  puts "--------------"
    
  if tree_options.key?(option)
    tree.send(tree_options[option])
  else
    puts 
    puts "enter correctly".upcase
    puts 
  end
end