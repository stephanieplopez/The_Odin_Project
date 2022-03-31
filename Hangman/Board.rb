require_relative 'Player.rb'
require_relative 'File_Processor.rb'

class Board
  attr_accessor :answer, :masked_answer, :split_answer

  def initialize(answer)
    @answer = answer
    # @split_answer = answer.split("")
    @masked_answer = answer.gsub(/[a-z]/, "_").split("")
  end


end