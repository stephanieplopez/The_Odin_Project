class Player
    def initialize(name)
        @name = name
        @isActive = isActive
        @symbol = symbol
    end

    def self.create_first_player(name)
        symbol = "X"
        isActive = true
    end

    def self.create_second_player(name)
        symbol = "O"
        isActive = false
    end

    def move(column, row)
        @column = column
        @row = row
    end

end