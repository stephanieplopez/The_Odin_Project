require_relative 'Menu.rb'

menu = Menu.new()
menu.display_menu_options
user_selection = gets.chomp
if user_selection == "1"
    menu.start_game
elsif user_selection == "2"
    puts ""
    puts "******************************"
    puts "Thank you for using TicTacToe"
    puts "******************************"
    puts ""
    exit
end
