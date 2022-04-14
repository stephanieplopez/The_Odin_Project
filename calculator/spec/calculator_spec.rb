require './lib/calculator'

describe Calculator do

  describe "#add" do
    it "returns the sum of two numbers" do
      calculator = Calculator.new
      expect(calculator.add(5, 2)).to eql(7)
    end

    it "returns the sum of more than two numbers" do
      calculator = Calculator.new
      expect(calculator.add(2, 5, 7)).to eql(14)
    end
  end

  describe "#multiply" do
    it "returns the product of two numbers" do
      calculator = Calculator.new
      expect(calculator.multiply(1, 3)).to eql(3)
    end

    it "doesn't return incorrect product" do 
      calculator = Calculator.new
      expect(calculator.multiply(1, 3)).not_to eql(5)
    end      
  end

end
