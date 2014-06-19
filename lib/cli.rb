require_relative '../lib/game_master'
require 'pry'
class CLI
  attr_reader :command, :parameters, :turn
  def self.start
    CLI.new.start
  end

  def initialize
    @command = ""
    @parameters = ""
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

  def execute_command
    case command
      when command = 'i'
        print "I will create a sequence of colors that you cannot see. You must guess the correct colors in the correct positions to win."
      when command = 'p'
      print "I have generated a beginner sequence with four elements made up of: \n(r)ed, (g)reen, (b)lue, and (y)ellow. \nUse (q)uit at any time to end the game. What is your guess?"
      game = GameMaster.new
      @start_time = Time.new
      input = gets.chomp
      @input_count << input
      while game.match?(input) == false
        game.turn(input)
        puts "#{input.upcase} has #{game.elements} of the correct elements with #{game.positions} in the correct positions. \nYou're on guess number: #{@input_count.length}"
        puts "Try again!"
        input = gets.chomp unless game.match?(input)
        break if game.match?(input)
      end
        @total_time = Time.new - @start_time
        @input_count << input
        puts "Congratulations! You guessed the sequence #{input.upcase} in #{@input_count.length} guesses over #{@total_time} seconds. Do you want to (p)lay again or (q)uit?"
    end
  end
end

mastermind = CLI.new.start
