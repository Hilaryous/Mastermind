require_relative '../lib/attempt'
require_relative '../lib/generator'
require 'pry'
class Matcher
  def initialize
    @sequence ||= Generator.new.create
    @count = 0
    # @sequence.create
    # @attempt ||= Attempt.new('rrby')
    # @attempt.input
  end

  def checker(attempt, sequence)
    attempt = attempt.input

    attempt.select { |letter| @sequence.include?(letter)}.length
  end

  def checker_index(attempt, sequence)
    attempt = attempt.input

    0.upto(attempt.length-1) do |index|
      if attempt[index] == @sequence[index]
        @count += 1
      end
    end
    @count
  end

  def full_match
    @count == 4
  end
end
