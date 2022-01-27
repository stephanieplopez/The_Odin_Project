require_relative 'Menu.rb'
require_relative 'Player.rb'

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

elsif user_selection == "2"
    puts ""
    puts "******************************"
    puts "Thank you for using TicTacToe"
    puts "******************************"
    puts ""
    exit
end
