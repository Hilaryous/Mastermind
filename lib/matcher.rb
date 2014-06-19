require_relative '../lib/attempt'
require_relative '../lib/generator'
require 'pry'
class Matcher
  def initialize
    @count = 0
    @sequence ||= Generator.new
  end

  def checker(attempt, sequence)
    seq = sequence.dup
    attempt.each do |a|
      index = seq.index(a)
      seq.slice!(index) if index
    end
    count = sequence.length - seq.length
  end

  def checker_index(attempt, sequence)
    count = 0

    attempt.length.times do |index|
      if attempt[index] == sequence[index]
        count += 1
      end
    end
    @count = count
  end

  def full_match
    @count == 4
  end
end
