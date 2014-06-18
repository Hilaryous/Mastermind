gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/test'

class CLITest < Minitest::Test
  def test_it_exists
    cli = CLI.new
    assert cli
  end

  def test_it_puts_a_welcome_message
    cli = CLI.new
  end

  def test_it_has_commands
    cli = CLI.new
    assert cli.commands
  end

  def test_it_has_parameters
    cli = CLI.new
    assert cli.parameters
  end

  def test_it_has_a_turn
    assert cli.turn
  end


  
  def test_it_puts_a_mid_game_message
    cli = CLI.new
  end

  def test_it_puts_an_end_game_message
    cli = CLI.new
  end

end
