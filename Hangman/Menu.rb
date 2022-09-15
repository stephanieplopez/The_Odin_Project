# require_relative 'Player.rb'

class Menu
  def initialize()
    puts
    puts "Welcome to Hangman!"
    puts
  end

  def display_main_menu_options()
    puts "1. New Game"
    puts "2. Load Saved Game"
    puts "3. Exit Game"
    puts
    print "Please choose an option: "
  end

  # def display_main_menu_options()
  #   puts "1. New Game or Load Saved Game"
  #   puts "2. Exit Game"
  #   puts
  #   print "Please choose an option: "
  # end

  def chance_to_save()
    puts "1. Guess another letter."
    puts "2. Save game and exit to main menu."
    puts
    print "Please choose an option: "
  end

  def display_load_slots()
    puts "Please choose a save slot to load: "
  end

  def prompt_player_for_name()
    print "Please enter player name: "
  end

  def welcome_player(playerName)
    puts
    print "Welcome, " + playerName + ", to the best game: Beat the Snowman!"
    puts
  end

  def display_exit_message()
    puts 
    puts "******************************"
    puts "Thank you for using Hangman"
    puts "******************************"
    puts  
  end

end