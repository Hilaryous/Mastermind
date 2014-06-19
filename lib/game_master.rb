require_relative '../lib/generator'
require_relative '../lib/attempt'
require_relative '../lib/matcher'
require 'pry'
class GameMaster
   attr_reader :sequence, :attempt, :match, :elements, :positions, :input
  def initialize
    @sequence = Generator.create
  end

  def match?(input)
    @input = input
    Attempt.format(input)
    @match = Matcher.full_match(@attempt, @sequence)
  end

  def turn(input)
    @input = input
    @expected_length = 4
    while Attempt.valid?(input, @expected_length)
      @attempt = Attempt.format(input)
      @elements = Matcher.checker(@attempt, @sequence)
      @positions = Matcher.checker_index(@attempt, @sequence)
      return true
    end
    return false
  end
end
