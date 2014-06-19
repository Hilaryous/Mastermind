gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/mock'
require_relative '../lib/generator'

class GeneratorTest < Minitest::Test
  attr_reader :sequence
  def setup
    @sequence ||= Generator.create
  end

  def test_it_exists
    assert sequence
  end

  def test_sequence_is_an_array
    assert_equal false, sequence.empty?
  end

  def test_sequence_has_four_elements
    assert_equal 4, sequence.length
  end

  def test_it_includes_b_g_r_y
    assert true, sequence.include?('b')
    assert true, sequence.include?('g')
    assert true, sequence.include?('r')
    assert true, sequence.include?('y')
  end
end
