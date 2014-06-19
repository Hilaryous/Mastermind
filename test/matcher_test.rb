gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/matcher'

class MatcherTest < Minitest::Test
  attr_reader :matcher, :sequence, :attempt
  def setup
    input = 'rrby'
    @attempt = Attempt.new(input)
    @sequence = Generator.new(4)
    @matcher = Matcher.new
  end

  def test_matcher_exists
    assert matcher
  end

  def test_is_a_match
    refute matcher.full_match
  end

  def test_tells_number_of_correct_elements
    assert_equal 4, matcher.checker(attempt, sequence)
  end

  def test_tells_number_of_correct_positions
    assert_equal 2, matcher.checker_index(attempt, sequence)
  end
end
