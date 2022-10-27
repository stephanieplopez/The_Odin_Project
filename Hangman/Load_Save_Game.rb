require_relative 'Board.rb'
require_relative 'Player.rb'
require 'csv'

class LoadSaveGame
  attr_accessor :path, :answer, :masked_answer, :guesses, :incorrect_guess_count, :game_outcome
    
    def initialize()
        @path = 'hangman_game_saves.csv'
    end
    # def load_game()
      
    # end
    
    def save(save_name, player_name, answer, masked_answer, guessed_letters, incorrect_guess_count)
      CSV.open(path, 'a+') do |csv|
          csv << ['Save_Slot', 'Name', 'Answer', 'Masked_Answer', 'Guesses', 'Incorrect_Guesses'] if csv.count.eql? 0
          csv << [save_name, player_name, answer, masked_answer, guessed_letters, incorrect_guess_count]
      end
    end

    # def save()
    #     fname = "Save_Slot_1.csv"
    #     CSV.open(fname, "wb") do |csv|
    #         csv << ["1", player.name, game_board.answer, game_board.masked_answer, game_board.guesses, game_board.incorrect_guess_count]
    #     end
    # end
end