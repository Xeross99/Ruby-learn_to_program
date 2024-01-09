require "net/http"
require "json"

class Tournament
  def initialize
    @username = ""
    @questions = []
    @line_width = 150
    @points = 0
    @answer_counter = 0
    @answers = []
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
  end

  def show_question
    system "clear"
    quest = @questions[@answer_counter]
    
    puts "CATEGORY: #{quest["category"].capitalize}"
    puts "TYPE: #{quest["type"].capitalize}"
    puts "DIFFICULTY: #{quest["difficulty"].capitalize}"
    puts "\n\n\n\n\n\n\n\n"
    puts "Question #{@answer_counter+1}/10\n".upcase.center(@line_width)
    sleep(1)
    puts quest["question"].center(@line_width)
    puts "\n\n\n\n\n\n\n\n"
    show_answer
    @answer_counter += 1
  end

  private

  def show_answer
    quest = @questions[@answer_counter]
    @answers = []

    if quest["type"] == "boolean"
      @answers[rand(0..1)] = quest["correct_answer"]
      @answers[0] == nil ? @answers[0]=quest["incorrect_answers"] : @answers[1]=quest["incorrect_answers"]
    else
      @answers[rand(0..3)] = quest["correct_answer"]
      
      4.times do |i|
        if @answers[i] != quest["correct_answer"]
          @answers[i] = quest["incorrect_answers"] 
        end
      end
    end

    @answers.each do |answer|
      puts answer
    end
  end

  def draw_questions
    5.times do |i|
      puts "#{i*2}/10 questions drawed".ljust(@line_width)
      url = URI("https://opentdb.com/api.php?amount=2")
      json_response = Net::HTTP.get(url)
      @questions[i] = JSON.parse(json_response)
      system "clear"
    end

    sort_quesions
  end

  def sort_quesions
    sorted_questions = []
    puts @questions

    @questions.each do |quest|
      results = quest["results"]

      2.times do |i|
        sorted_questions.push(results[i])
      end
    end
    @questions = sorted_questions
  end

  def increment_points 
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
tournament.show_question