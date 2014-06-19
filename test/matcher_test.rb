gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/matcher'

class MatcherTest < Minitest::Test
  attr_reader :match, :positions, :elements, :attempt, :sequence
  def setup
    input = 'rrby'
    @attempt = Attempt.format(input)
    @sequence = Generator.create
    @match = Matcher.full_match(attempt, sequence)
    @elements = Matcher.checker(attempt, sequence)
    @positions = Matcher.checker_index(attempt, sequence)
  end

  def test_is_a_match
    refute @match
  end

  def test_tells_number_of_correct_elements
    assert_equal 4, @elements
  end

  def test_tells_number_of_correct_positions
    assert_equal 2, @positions
  end
end
