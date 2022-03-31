require_relative 'File_Processor.rb'
require_relative 'Board.rb'
require_relative 'Menu.rb'
require_relative 'Player.rb'

menu = Menu.new()



while true do
  menu.display_menu_options()
  user_selection = gets.chomp
  if user_selection == '1'
    puts "User has started game"

    file_processor = File_Processor.new()
    
    game_board = Board.new(file_processor.answer)
    puts game_board.answer
    # remove the above line when finalizing the game
    print game_board.masked_answer
    # maybe move this print to the Board.rb class and have a display board method

  elsif user_selection == "2"
    menu.display_exit_message()
    exit

  # (?) Add try/catch to reject input that is invalid
  elsif ['exit', 'quit'].any?(user_selection)
    exit
  end
end
