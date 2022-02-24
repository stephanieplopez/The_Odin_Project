require_relative 'Player.rb'

class Board
    attr_accessor :top_row, :middle_row, :bottom_row

    def initialize()
        @top_row = create_board_row()
        @middle_row = create_board_row()
        @bottom_row = create_bottom_board_row()
    end

    def display_key()
        example = [
            ["_1_|", "_2_", "|_3_"],
            ["_4_|", "_5_", "|_6_"],
            [" 7 |", " 8 ", "| 9 "]
    ]
        example.each do |left, middle, right| 
            puts "#{left}#{middle}#{right}"
        end
    end

    def create_board_row()
        array = ["_", "_", "_", "|", "_", "_", "_", "|", "_", "_", "_", "\n"]
    end

    def create_bottom_board_row()
        array = [" ", " ", " ", "|", " ", " ", " ", "|", " ", " ", " ", "\n"]
    end

    def display_board()
        @top_row.each { |character| print character }
        @middle_row.each { |character| print character }
        @bottom_row.each { |character| print character }
    end

    # Logic for determining when game is finished
    def check_if_win_condition_has_been_met()
        if (([top_row[1],top_row[5],top_row[9]].all? {|symbol| symbol=="X"}) == true or
            ([top_row[1],top_row[5],top_row[9]].all? {|symbol| symbol=="O"}) == true) == true
            1
        elsif (([middle_row[1],middle_row[5],middle_row[9]].all? {|symbol| symbol=="X"}) == true or
               ([middle_row[1],middle_row[5],middle_row[9]].all? {|symbol| symbol=="O"}) == true) == true
            1
        elsif (([bottom_row[1],bottom_row[5],bottom_row[9]].all? {|symbol| symbol=="X"}) == true or
               ([bottom_row[1],bottom_row[5],bottom_row[9]].all? {|symbol| symbol=="O"}) == true) == true
            1
        elsif (([top_row[1],middle_row[1],bottom_row[1]].all? {|symbol| symbol=="X"}) == true or
               ([top_row[1],middle_row[1],bottom_row[1]].all? {|symbol| symbol=="O"}) == true) == true
            1
        elsif (([top_row[5],middle_row[5],bottom_row[5]].all? {|symbol| symbol=="X"}) == true or
               ([top_row[5],middle_row[5],bottom_row[5]].all? {|symbol| symbol=="O"}) == true) == true
            1
        elsif (([top_row[9],middle_row[9],bottom_row[9]].all? {|symbol| symbol=="X"}) == true or
               ([top_row[9],middle_row[9],bottom_row[9]].all? {|symbol| symbol=="O"}) == true) == true
            1
        elsif (([top_row[1],middle_row[5],bottom_row[9]].all? {|symbol| symbol=="X"}) == true or
               ([top_row[1],middle_row[5],bottom_row[9]].all? {|symbol| symbol=="O"}) == true) == true
            1
        elsif (([top_row[1],middle_row[5],bottom_row[9]].all? {|symbol| symbol=="X"}) == true or
               ([top_row[1],middle_row[5],bottom_row[9]].all? {|symbol| symbol=="O"}) == true) == true
            1
        elsif (([top_row[9],middle_row[5],bottom_row[1]].all? {|symbol| symbol=="X"}) == true or
               ([top_row[9],middle_row[5],bottom_row[1]].all? {|symbol| symbol=="O"}) == true) == true
            1
        end
    end

    def prompt_player_for_move()
        # How can we display the player's name when prompted (?)
        puts ", please select box to place symbol: "    
    end

    def validate_move()
        input = false
        until input == true
            user_input = gets.chomp
            if user_input.match('^[1-9]$')    
                input = true
            else 
                puts "*** Please enter valid move ***"
            end
        end
        return user_input
    end

    # Record/Display the players move on the board
    def process_move(box, symbol)
        case box
        when "1"
            # How do we access Player Symbol
            puts "The symbol that moved is: " + symbol
            top_row[1] = symbol
        when "2"
            puts "The symbol that moved is: " + symbol
            top_row[5] = symbol    
        when "3"
            puts "The symbol that moved is: " + symbol
            top_row[9] = symbol       
        when "4"
            puts "The symbol that moved is: " + symbol
            middle_row[1] = symbol     
        when "5"
            puts "The symbol that moved is: " + symbol
            middle_row[5] = symbol
        when "6"
            puts "The symbol that is moved is " + symbol
            middle_row[9] = symbol
        when "7"
            puts "The symbol that is moved is " + symbol
            bottom_row[1] = symbol
        when "8"
            puts "The symbol that is moved is " + symbol
            bottom_row[5] = symbol
        when "9"
            puts "The symbol that is moved is " + symbol
            bottom_row[9] = symbol
        else
            # Add logic for rejecting input that is anything other than 1 - 9
            puts "There was an error!"
        end 
    end
    # Create method for checking rows, columns, and diagonals

end