gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/matcher'

class MatcherTest < Minitest::Test
  def test_matcher_exists
    matcher = Matcher.new
    assert matcher
  end

  def test_is_a_match
    attempt = Attempt.new('rrby')
    sequence = Generator.new(4)
    matcher = Matcher.new
    assert true, matcher.full_match
    ## not working right why?
  end

  def test_tells_number_of_correct_elements
    attempt = Attempt.new('rrby')
    sequence = Generator.new(4)
    matcher = Matcher.new
    assert_equal 4, matcher.checker(attempt, sequence)
  end

  def test_tells_number_of_correct_positions
    attempt = Attempt.new('rrby')
    sequence = Generator.new(4)
    matcher = Matcher.new
    assert_equal 2, matcher.checker_index(attempt, sequence)
  end
end
