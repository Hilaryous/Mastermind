gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/attempt'

class AttemptTest < Minitest::Test
  attr_reader :attempt
  def setup
    input = 'rbgy'
    @attempt = Attempt.new(input)
  end

  def test_it_exists
    assert attempt
  end

  def test_attempt_is_an_array
    assert_equal false, attempt.input.empty?
  end

  def test_attempt_has_four_elements
    assert_equal 4, attempt.input.length
  end

end
