class Player
    attr_accessor :name, :isActive, :symbol

    def initialize(name)
        @name = name
        @isActive = isActive
        @symbol = symbol
    end

    def self.create_first_player(name)
        symbol = "X"
        isActive = true
        Player.new(name)
    end

    def self.create_second_player(name)
        symbol = "O"
        isActive = false
        Player.new(name)
    end

    def move(column, row)
        @column = column
        @row = row
    end

# decide on how players input moves
# (Player or Board?) interpreter to translate moves to array changes
# ? Add to else statement for checking condition of 
end