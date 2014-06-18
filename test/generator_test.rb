gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/mock'
require_relative '../lib/generator'

class GeneratorTest < Minitest::Test
  def test_it_exists
    sequence = Generator.new
    assert sequence
  end

  def test_sequence_is_an_array
    sequence = Generator.new
    assert_equal false, sequence.create.empty?
  end

  def test_sequence_has_four_elements
    sequence = Generator.new
    assert_equal 4, sequence.create.length
  end
end
