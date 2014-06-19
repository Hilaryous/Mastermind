require_relative '../lib/attempt'
require_relative '../lib/matcher'

class Turn
  attr_reader :feedback, :positions, :elements

  def initialize(attempt, matcher)
    @positions = 0
    @elements  = 0
    input = 'rrby'
  end

  def evaluate_feedback
    if @matcher.full_match
      feedback = []
      feedback << @attempt
      feedback << @turn
      feed_back << time_delta = (@times[-1]) - (@times[0])
    else
      feedback = []
      feedback << @attempt
      feedback << @turn
      @positions = matcher.checker_index
      @elements  = matcher.checker
    end
  end
end

 # input = 'rrgb'
 # attempt = Attempt.new(input)
 # matcher = Matcher.new
 #
 # turn_1 = Turn.new(matcher)
 # turn_2 = Turn.new(matcher)
