class Player
    attr_accessor :name, :isActive, :symbol

    def initialize(name, isActive, symbol)
        @name = name
        @isActive = isActive
        @symbol = symbol
    end

    def self.create_first_player(name)
        isActive = true
        symbol = "X"
        Player.new(name, isActive, symbol)
    end

    def self.create_second_player(name)
        isActive = false
        symbol = "O"
        Player.new(name, isActive, symbol)
    end

    def move(box)
        @box = box
    end

# Decide on how players input moves
# (Player or Board?) interpreter to translate moves to array changes
# Add logic to win condition board
end