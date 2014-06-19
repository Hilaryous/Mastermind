require_relative '../lib/generator'
require_relative '../lib/matcher'
require_relative '../lib/game_master'
class CLI
  attr_reader :command, :parameters, :turn
  def self.start
    CLI.new.start
  end

  def initialize
    @command = ""
    @parameters = ""
    @turn = turn
    @input_count = []
  end

  def start
    puts "Welcome to MASTERMIND \nWould you like to (p)lay, read the (i)nstructions, or (q)uit?"
    while command != 'q'
      parts = process_start_input(gets.strip)
      assign_instructions(parts)
      execute_command
    end
  end

  def process_start_input(input)
    input.slice!(0)
  end

  def assign_instructions(parts)
    @command = parts[0]
  end

  def process_turn_input(input)
    input
  end

  def execute_command
    case command
      when command = 'i'
        print "I will create a sequence of colors that you cannot see. You must guess the correct colors in the correct positions to win."
      when command = 'p'
      print "I have generated a beginner sequence with four elements made up of: \n(r)ed, (g)reen, (b)lue, and (y)ellow. \nUse (q)uit at any time to end the game. What is your guess?"
      input = process_turn_input(gets.chomp).split('').to_a
      sequence = Generator.new(4).create
      matcher = Matcher.new
      start_time = Time.now
      #input = Attempt.new( process_turn_input(gets.chomp))
      while matcher.full_match == false
        @input_count << input
        puts sequence
        elements = matcher.checker(input, sequence)
        positions = matcher.checker_index(input, sequence)
        puts "#{input.join.upcase} has #{elements} of the correct elements with #{positions} in the correct positions. \nYou're on guess number: #{@input_count.length}"
        puts "Try again!"
        input = process_turn_input(gets.chomp).split('').to_a unless matcher.full_match
        break if matcher.full_match
      end
        seconds_passed = Time.now - start_time
        puts "Congratulations! You guessed the sequence #{input.join.upcase} in #{@input_count.length} guesses over #{seconds_passed} seconds. Do you want to (p)lay again or (q)uit?"
    end
  end
end

mastermind = CLI.new.start
