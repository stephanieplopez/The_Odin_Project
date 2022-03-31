require_relative 'Player.rb'
require_relative 'File_Processor.rb'

class Board
  def initialize()
    @correct_answer = "answer"
  end

  def select_correct_answer(valid_words)
    valid_words[rand(8451)]
  end

end