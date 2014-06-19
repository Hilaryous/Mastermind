gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/game_master'

class GameMasterTest < Minitest::Test
  attr_reader :game, :input

  def setup
    @input = 'rrby'
    @game ||= GameMaster.new
  end

  def test_it_has_a_sequence
    assert game.sequence
  end

  def test_it_finds_a_match
    refute game.match?(input)
  end

  def test_it_takes_a_turn_wrong_input
    input = 'rbgyr'
    refute game.turn(input)
  end

  def test_it_takes_a_turn
    assert game.turn(input)
  end
end
