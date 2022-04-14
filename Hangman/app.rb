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

    menu.prompt_player()
    player = Player.new(gets.chomp)
    menu.welcome_player(player.name)
    board_setup = SetupGame.new()
    
    game_board = Board.new(board_setup.answer)

    # remove line when finalizing the game
    puts game_board.answer

    game_board.display_board

  elsif user_selection == '2'
    menu.display_exit_message()
    exit

  # (?) Add try/catch to reject input that is invalid
  elsif ['exit', 'quit'].any?(user_selection)
    exit
  end
end

# Intake letter from player
# Give feedback on letter guessed correctly or incorrectly

# Increment incorrect guesses
# Render correct snowman 'part' if incorrect guess was given
# Display letters guessed by Player


# Ability to quit and start back up to current game session

# Display fun graphic if they win!!!!!
# QOL - ALL CAPS, every day, all day