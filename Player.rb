class Player
    def initialize(player_number, name, symbol)
        @player_number = player_number
        @name = name
        @symbol = symbol
    end

    def move(column, row)
        @column = column
        @row = row
    end
end