require_relative 'Setup_Game.rb'
require_relative 'Board.rb'
require_relative 'Menu.rb'
require_relative 'Player.rb'

menu = Menu.new()

while true do
  menu.display_menu_options()
  user_selection = gets.chomp
  if user_selection == '1'
    puts "User has started game"

    menu.prompt_player_for_name()
    player = Player.new(gets.chomp)
    menu.welcome_player(player.name)
    board_setup = SetupGame.new()
    
    game_board = Board.new(board_setup.answer)

    # remove line when finalizing the game
    puts game_board.answer

    # We will want a loop here so that the player gets more than 1 turn
    
    game_board.display_board

    menu.prompt_player_for_letter

    letter_guessed = gets.chomp
    game_board.receive_letter(letter_guessed)

  elsif user_selection == '2'
    menu.display_exit_message()
    exit

  # (?) Add try/catch to reject input that is invalid
  elsif ['exit', 'quit'].any?(user_selection)
    exit
  end
end

# Give feedback on letter guessed correctly or incorrectly

# Increment incorrect guesses
# Render correct snowman 'part' if incorrect guess was given
# Display letters guessed by Player


# Ability to quit and start back up to current game session

# Display fun graphic if they win!!!!!
# QOL - ALL CAPS, every day, all day