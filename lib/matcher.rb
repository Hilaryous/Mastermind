require 'pry'
module Matcher
  def self.checker(attempt, sequence)
    seq = sequence.dup
    attempt.each do |letter|
      index = seq.index(letter)
      seq.slice!(index) if index
    end
    count = sequence.length - seq.length
    count
  end

  def self.checker_index(attempt, sequence)
    count = 0
    attempt.length.times do |index|
      if attempt[index] == sequence[index]
        count += 1
      end
    end
    count
  end

  def self.full_match(attempt,sequence)
    attempt == sequence
  end
end
