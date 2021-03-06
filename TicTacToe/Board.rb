require_relative 'Player.rb'

class Board
    attr_accessor :top_row, :middle_row, :bottom_row, :move_log

    def initialize()
        @top_row = create_board_row()
        @middle_row = create_board_row()
        @bottom_row = create_bottom_board_row()
        @move_log = []
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

    def prompt_move_from(player)
        # How can we display the player's name when prompted (?)
        puts player + ", please select box to place symbol: "    
    end

    def validate_move_from(player)
        input = false
        until input == true
            user_input = gets.chomp
            if user_input.match('^[1-9]$')    
                if move_log.any?(user_input)
                    puts "*** This box already occupied ***"
                    prompt_move_from(player)
                else
                    move_log.append(user_input)
                    input = true
                end
            else 
                puts "*** Please enter valid move ***"
                prompt_move_from(player)
            end
        end
        return user_input
    end

    # Prevent players from making moves that have already been made
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
        end 
    end

end