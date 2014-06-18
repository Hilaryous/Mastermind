gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/turn'

class TurnTest < Minitest::Test
  def test_it_exists
    turn = Turn.new
    assert turn
  end

  def test_it_counts_turn
    turn = Turn.new
    assert_equal 1 ,turn.count
  end

  def test_it_gives_turn_a_time
     turn = Turn.new
     assert_equal 1 ,turn.time.length
  end

  def test_it_evaluates_feedback
    turn = Turn.new
    assert_equal ,turn.evaluate_feedback
  end
end
