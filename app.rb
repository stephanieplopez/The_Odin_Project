# check for excluding Mac files

require_relative 'Menu.rb'
require_relative 'Player.rb'
require_relative 'Board.rb'

menu = Menu.new()
menu.display_menu_options
user_selection = gets.chomp
if user_selection == "1"
    menu.prompt_first_player
    x_player_name = gets.chomp
    x_player = Player.create_first_player(x_player_name)
    menu.prompt_second_player
    o_player_name = gets.chomp
    o_player = Player.create_second_player(o_player_name)

    game_board = Board.new()
    
    isGameFinished = false
    while isGameFinished == false do
        game_board.display_board()
        win_condition_board = game_board
        # A duplicate board is created using the game board
        win_condition_board.make_win_condition_board()
        # The duplicate board is converted to a short-hand version for use in checking win conditions
        if x_player.isActive == true
            # x player makes a move
            x_player.isActive = false
            o_player.isActive = true
        else
            # o player makes a move
            o_player.isActive = false
            x_player.isActive = true
        end
        # Add check game state ie rows, columns etc from Board class
        isGameFinished = true

        # Display winner
        puts "Game has finished"
    end
elsif user_selection == "2"
    menu.quit_and_display_exit_message()
end
