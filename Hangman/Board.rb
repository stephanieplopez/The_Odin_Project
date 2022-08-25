require_relative 'Player.rb'
require_relative 'Setup_Game.rb'

class Board
  attr_accessor :answer, :masked_answer, :split_answer, :guesses, :incorrect_guess_count

  def initialize(answer)
    @answer = answer
    @masked_answer = answer.gsub(/[a-z]/, "_").split("")
    @guesses = []
    @incorrect_guess_count = 0
  end

  def display_board()
    puts "Number of incorrect guesses: " + @incorrect_guess_count.to_s

    render_ascii_art()
    puts
    print "Word to guess: "
    masked_answer.each { |character| print character + " "}
    puts
    print "Letters that have been guessed so far: "
    print guesses
    puts
    puts
  end

  def prompt_player_for_letter()
    print "Please guess a letter: "
  end

  def validate_letter_from_player()
    input = false
    until input == true
      user_input = gets.chomp
      if user_input.match('^[A-Za-z]$')
        if guesses.any?(user_input)
          puts "*** Letter has already been guessed ***"
          prompt_player_for_letter()
        else
          guesses.append(user_input)
          input = true
        end
      else
        puts "*** Please enter a single letter ***"
        prompt_player_for_letter()
      end
    end
    return user_input
  end

  def process_guess(letter)
    if answer.include?(letter)
      puts
      puts "*** Correct! The answer contains '" + letter + "' ***"
      indices_to_reveal = (0 ... answer.length).find_all { |i| answer[i,1] == letter}
      puts

      indices_to_reveal.each do |i|
        masked_answer[i] = letter
      end

    else
      puts "*** Incorrect, '" + letter + "' isn't in the answer ***" 
      puts 
      @incorrect_guess_count += 1
    end
  end

  def check_for_win_or_loss()
    if @incorrect_guess_count > 5
      "loss"
    elsif @masked_answer.none? {|letter| letter == "_"}
      "win"
    end
  end

  def render_ascii_art
    File.foreach("snowman_" + incorrect_guess_count.to_s + ".txt") do |line|
      puts line
    end
  end

end