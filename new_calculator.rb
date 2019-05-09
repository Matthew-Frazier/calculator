@calculation = []

module Operators
  def add(num_1, num_2)
    num_1 + num_2
  end

  def subtract(num_1, num_2)
    num_1 - num_2
  end

  def multiply(num_1, num_2)
    num_1 * num_2
  end

  def divide(num_1, num_2)
    num_1 / num_2
  end

  def exponent(num_1, num_2)
    num_1 ^ num_2
end

class Equation
  include Operators
  attr_accessor :num_1, :num_2, :operator

  def initialize
    @num_1 = num_1
    @num_2 = num_2
  end
end
