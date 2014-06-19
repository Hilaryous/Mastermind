gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/attempt'
require 'pry'

class AttemptTest < Minitest::Test
  def test_it_formats
    assert_equal ["r","b","g","y"], Attempt.format('rbgy')
  end

  def test_it_validates
    result = Attempt.valid?('rbgyr', 4)
    assert_equal false, result
  end
end
