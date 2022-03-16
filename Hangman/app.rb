require_relative 'Board.rb'
require_relative 'Menu.rb'
require_relative 'Player.rb'

menu = Menu.new()

while true do
    menu.display_menu_options()
    user_selection = gets.chomp
    if user_selection == "1"
        puts "User has started game"
        
    elsif user_selection == "2"
        menu.display_exit_message()
        exit

    # (?) Add try/catch to reject input that is invalid
    elsif ['exit', 'quit'].any?(user_selection)
        exit
    end
end
