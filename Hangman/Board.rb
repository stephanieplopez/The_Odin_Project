require_relative 'Player.rb'
require_relative 'Setup_Game.rb'

class Board
  attr_accessor :answer, :masked_answer, :split_answer, :guesses

  def initialize(answer)
    @answer = answer
    @masked_answer = answer.gsub(/[a-z]/, "_").split("")
    @guesses = []
  end

  def display_board()
    masked_answer.each { |character| print character + " "}
    puts ""
  end

  def receive_letter(letter)
    puts letter
    guesses.append(letter)
    puts guesses
  end

end