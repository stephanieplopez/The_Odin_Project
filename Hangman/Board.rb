require_relative 'Player.rb'
require_relative 'File_Processor.rb'

class Board
    def initialize()
        @correct_answer = choose_random_word(valid_words)
    end

    # num_selection = rand(10000)
    # word = contents[num_selection]
end