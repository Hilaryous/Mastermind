require_relative '../lib/generator'
require_relative '../lib/attempt'
require_relative '../lib/matcher'
class GameMaster
   attr_reader :sequence, :attempt, :match, :elements, :positions, :start_time, :input
  def initialize
    @sequence = Generator.create
  end

  def match?(input)
    @input = input
    @attempt = Attempt.format(input)
    @match = Matcher.full_match(@attempt, @sequence)
  end

  def turn(input)
    @input = input
    @expected_length = 4
    @attempt = Attempt.format(input)
    @elements = Matcher.checker(@attempt, @sequence)
    @positions = Matcher.checker_index(@attempt, @sequence)
  end
end
