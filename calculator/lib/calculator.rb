
class Calculator

  def add(*parameter)
    result = 0
    parameter.each do | number | 
      result += number
    end
    result
  end

  def multiply(*parameter)
    result = 1
    parameter.each do | number |
      result *= number
    end
    result
  end
end