class Menu
    def initialize()
        puts
        puts "Welcome to TicTacToe!"
    end

    def display_menu_options()
        puts "1. Start Game"
        puts "2. Show Key"
        puts "3. Exit Game"
        print "Please choose an option: "
    end

    def display_exit_message()
        puts 
        puts "******************************"
        puts "Thank you for using TicTacToe"
        puts "******************************"
        puts  
    end

    def prompt_first_player()
        print "Please enter the name of the first player who will play for 'X': "
    end

    def prompt_second_player()
        print "Please enter the name of the second player who will play for 'O': "
    end

    def render_ascii_art
        File.foreach("congrats_ascii.txt") do |line|
          puts line
        end
    end

    def start_game()
    end
end