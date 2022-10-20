require_relative 'Board.rb'
require_relative 'Player.rb'
require 'csv'

class LoadSaveGame
  attr_accessor :answer, :masked_answer, :guesses, :incorrect_guess_count, :game_outcome
    
    # def load_game()
      
    # end
    
    def test_method()
      path = 'test.csv'
      CSV.open(path, 'w', headers: ['Save_Slot', 'Name', 'Answer', 'Masked_Answer', 'Guesses', 'Incorrect_Guesses'], write_headers: true) do |csv|
          csv << [1, 'Ligunberry', 'Booty', '_ _ _ _ _', ['a', 'c'], 2]
      end
    end

    # def save()
    #     fname = "Save_Slot_1.csv"
    #     CSV.open(fname, "wb") do |csv|
    #         csv << ["1", player.name, game_board.answer, game_board.masked_answer, game_board.guesses, game_board.incorrect_guess_count]
    #     end
    # end
end