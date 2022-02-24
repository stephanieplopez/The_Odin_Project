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

        # Add check for win conditions for each player

        puts ""
        
        if x_player.isActive == true
            puts "*** Player " + x_player_name + " turn ***"
            game_board.prompt_player_for_move()

            # Prompt player for valid input
            x_player_move = game_board.validate_move()

            # Process x player move
            game_board.process_move(x_player_move, x_player.symbol)

            x_player.isActive = false
            o_player.isActive = true
        elsif o_player.isActive == true
            puts "*** Player " + o_player_name + " turn ***"
            game_board.prompt_player_for_move()
            o_player_move = game_board.validate_move()

            # Process o player move
            game_board.process_move(o_player_move, o_player.symbol)

            o_player.isActive = false
            x_player.isActive = true
        else
            puts "Todo smells"
        end

        if game_board.check_if_win_condition_has_been_met() == 1
            isGameFinished = true
        end
    end
    
    #We change isActive status AFTER a player makes a move, so after the winning move is made, the winning
    #player's isActive status is set to false - that's why the names are reversed below
    
    if x_player.isActive == true
        puts "Congratulations " + o_player_name + ", you have won!"
    else
        puts "Congratulations " + x_player_name + ", you have won!"
    end
    puts "Game Over"
elsif user_selection == "2"
    board.disply_key()
elsif user_selection == "3"
    menu.quit_and_display_exit_message()
end
