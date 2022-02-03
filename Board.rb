class Board
    attr_accessor :top_row, :middle_row, :bottom_row

    def initialize()
        @top_row = create_board_row()
        @middle_row = create_board_row()
        @bottom_row = create_bottom_board_row()
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

    # Create method for checking rows, columns, and diagonals
    # Record/Display the players move on the board

end