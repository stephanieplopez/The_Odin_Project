require_relative 'Setup_Game.rb'
require_relative 'Board.rb'
require_relative 'Menu.rb'
require_relative 'Player.rb'

menu = Menu.new()

while true do
  menu.display_menu_options()
  user_selection = gets.chomp
  if user_selection == '1'

    menu.prompt_player_for_name()
    player = Player.new(gets.chomp)
    menu.welcome_player(player.name)
    board_setup = SetupGame.new()
    
    game_board = Board.new(board_setup.answer)

    
    # remove line when finalizing the game
    puts game_board.answer

    # ******** Game Play Begins *********
    isGameFinished = false

    until isGameFinished == true do

      game_board.display_board()

      game_board.check_for_win_or_loss()

      if game_board.game_outcome == "loss" || game_board.game_outcome == "win"
        break
      end

      game_board.prompt_player_for_letter()

      valid_letter_guess = game_board.validate_letter_from_player()

      game_board.process_guess(valid_letter_guess)

    end

    #win, lose, or save game
  elsif user_selection == '2'
    menu.display_load_slots()

    puts "Loading saved game "
    puts "Loading...." 
    puts "...."
    puts ""

  elsif user_selection == '3'
    menu.display_exit_message()
    exit

  # (?) Add try/catch to reject input that is invalid
  elsif ['exit', 'quit'].any?(user_selection)
    exit
  end
end

# Ability to quit and start back up to current game session
# -- https://www.theodinproject.com/lessons/ruby-files-and-serialization

# Display fun graphic if they win!!!!!
# QOL - ALL CAPS, every day, all day

# General cleanup - spacing, game conditions, etc.