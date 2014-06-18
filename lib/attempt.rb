require 'pry'
class Attempt
  def initialize(input)
    @input = input
  end

  def input
    @input.split('').to_a
  end
end
