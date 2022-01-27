class Player
    def initialize(name)
        @name = name
        @symbol = symbol
    end

    def self.create_first_player(name)
        symbol = "X"
    end

    def self.create_second_player(name)
        symbol = "O"
    end

    def move(column, row)
        @column = column
        @row = row
    end
end