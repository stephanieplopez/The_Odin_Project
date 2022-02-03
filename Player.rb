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
    end

    def self.create_second_player(name)
        symbol = "O"
        isActive = false
    end

    def move(column, row)
        @column = column
        @row = row
    end

    # def whose_turn_is_it(x_player, o_player)
    #     if x_player.isActive = true  
    #         return x_player
    #      else
    #          return o_player
    #
    # end

end