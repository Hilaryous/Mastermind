gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/turn'
require_relative '../lib/generator'

class TurnTest < Minitest::Test
  attr_reader :turn, :matcher, :attempt, :sequence
  def setup
    input = 'rrgb'
    @sequence = Generator.new(4)
    @attempt = Attempt.new(input)
    @matcher = Matcher.new
    @turn ||= Turn.new(attempt, matcher)
  end

  def test_it_exists
    assert turn
  end

  def test_it_evaluates_feedback
    assert_equal ['rrgb', '1', '4', '2'], turn.evaluate_feedback
  end
end
