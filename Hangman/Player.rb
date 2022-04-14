class Player
  attr_accessor :name, :numberOfIncorrectGuesses

  def initialize(name)
    @name = name
    @numberOfIncorrectGuesses = 0
  end

end