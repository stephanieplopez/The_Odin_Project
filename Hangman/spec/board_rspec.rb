require_relative '../Board'

#Test class
describe Board do
  
  #Test case method
  describe "#display_board" do
  
    #Test case
    it "displays correct number of underscores" do
      game_board = Board.new("TestCase")
      expect(game_board.display_board()).to eql(["_", "_", "_", "_", "_", "_", "_", "_"])
    end

    #Test case
    it "does not display incorrect number of underscores" do
      game_board = Board.new("Wrong")
      expect(game_board.display_board()).not_to eql(["_", "_", "_"])
    end
  end

  describe "#receive_letter" do
end