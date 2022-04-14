require_relative 'Player.rb'
require_relative 'Setup_Game.rb'

class Board
  attr_accessor :answer, :masked_answer, :split_answer

  def initialize(answer)
    @answer = answer
    # @split_answer = answer.split("")
    @masked_answer = answer.gsub(/[a-z]/, "_").split("")
  end

  def display_board()
    masked_answer.each { |character| print character + " "}
    puts ""
  end

end