require_relative 'Board.rb'
require_relative 'app.rb'
require 'csv'

class LoadSaveGame
    
    
    # def load_game()

    # end

    def save()
        fname = "Save_Slot_1.csv"
        CSV.open(fname, "wb") do |csv|
            csv << ["1", player.name, game_board.answer, game_board.masked_answer, game_board.guesses, game_board.incorrected_guess_count]
        end
    end
end