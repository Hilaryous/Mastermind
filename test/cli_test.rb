gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/cli'

class CLITest < Minitest::Test
  attr_reader :cli
  def setup
    @cli ||= CLI.new
  end

  def test_it_exists
    assert cli
  end

  def test_it_has_command
    assert cli.command
  end

  def test_it_processes_start_input
    input = 'play'
    result = cli.process_start_input(input)

    assert_equal 'p', result
  end

  def test_it_assigns_instructions
    input = 'play'
    parts = cli.process_start_input(input)
    cli.assign_instructions(parts)

    assert_equal 'p', cli.command
  end

  def test_it_executes_commands
    skip
    input = 'i'
    parts = cli.process_input(input)
    cli.assign_instructions(parts)
    result = cli.execute_command

    assert_equal true, result

  end
end
