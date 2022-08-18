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

    # We will want to break this loop when word is completed

    isGameFinished = false

    while isGameFinished == false do

      game_board.display_board

      game_board.prompt_player_for_letter

      valid_letter_guess = game_board.validate_letter_from_player()

      game_board.process_guess(valid_letter_guess)

      if game_board.check_for_win_or_loss == "loss" || game_board.check_for_win_or_loss == "win"
        isGameFinished = true
      end 
      
    end

  elsif user_selection == '2'
    menu.display_exit_message()
    exit

  # (?) Add try/catch to reject input that is invalid
  elsif ['exit', 'quit'].any?(user_selection)
    exit
  end
end

# Render correct snowman 'part' if incorrect guess was given

# Ability to quit and start back up to current game session

# Display fun graphic if they win!!!!!
# QOL - ALL CAPS, every day, all day

# General cleanup - spacing, game conditions, etc.