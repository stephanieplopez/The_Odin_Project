# require_relative 'Player.rb'

class Menu
  def initialize()
      puts
      puts "Welcome to Hangman!"
      puts
  end

  def display_menu_options()
      puts "1. Start Game"
      puts "2. Exit Game"
      puts "Please choose an option: "
  end

  def prompt_player_for_name()
    print "Please enter player name: "
  end

  def welcome_player(playerName)
    print "Welcome " + playerName + " to the best game: Beat the Snowman!"
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