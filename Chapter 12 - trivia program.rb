require "net/http"
require "json"

class Tournament
  def initialize
    @username = ""
    @questions = []
    @line_width = 150
    @points = 0
    @answer = 0
  end

  def welcome
    system "clear"
    puts "#{"-"* @line_width}\n\n"
    puts "welcome to ultimate knowledge tournament\n".upcase.center(@line_width)
    puts "#{"-"* @line_width}\n"
    print "Enter your name: "
    @username = gets.chomp.capitalize.to_s
  end
  
  def info
    system "clear"
    puts "#{"-"* @line_width}\n\n"
    puts "Welcome #{@username.capitalize}! The rules of the game are simple :)\n".center(@line_width)
    puts "After starting the game, 10 questions will be drawn and you must answer them correctly".center(@line_width)
    puts "That's all. Good luck!\n\n\n".center(@line_width)
    print "press enter to start".ljust(@line_width)
    gets.chomp
    puts "#{"-"* @line_width}\n"
  end

  def start_game
    puts "Drawing 10 questions"
    draw_questions
    show_question
  end

  private

  def show_question
    @questions.each do |quest|
      results = quest["results"]
      question1 = results[0]
      question2 = results[1]
    end
  end

  def draw_questions
    5.times do |i|
      puts "#{i*2}/10 questions drawed"
      url = URI("https://opentdb.com/api.php?amount=2")
      json_response = Net::HTTP.get(url)
      @questions[i] = JSON.parse(json_response)
      system "clear"
    end
  end

  def add_points 
    @points += 1
  end

  def summary
    puts "tutaj bedzie podsumowanie po zakonczonej grze"
  end
end

tournament = Tournament.new
tournament.welcome
tournament.info
tournament.start_game