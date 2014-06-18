gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/attempt'

class AttemptTest < Minitest::Test
  def test_it_exists
    attempt = Attempt.new('rbgy')
    assert attempt
  end

  def test_attempt_is_an_array
    attempt = Attempt.new('rbgy')
    assert_equal false, attempt.input.empty?
  end

  def test_attempt_has_four_elements
    attempt = Attempt.new('rbgy')
    assert_equal 4, attempt.input.length
  end

end
