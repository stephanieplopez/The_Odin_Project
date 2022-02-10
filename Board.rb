class Board
    attr_accessor :top_row, :middle_row, :bottom_row

    def initialize()
        @top_row = create_board_row()
        @middle_row = create_board_row()
        @bottom_row = create_bottom_board_row()
    end

    def display_key()
        example = [
            ["   L ", "  M   ", "R"],
            ["T ___|", "___", "|___"],
            ["M ___|", "___", "|___"],
            ["B    |", "   ", "|   "]
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

    def make_win_condition_board()
        @top_row = [@top_row[1],@top_row[5],@top_row[9]]
        @middle_row = [@middle_row[1],@middle_row[5],@middle_row[9]]
        @bottom_row = [@bottom_row[1],@bottom_row[5],@bottom_row[9]]
    end

    # Create method for checking rows, columns, and diagonals
    # Record/Display the players move on the board

end