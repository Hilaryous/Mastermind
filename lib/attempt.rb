require 'pry'
class Attempt
  def initialize(input)
    @input = input
  end

  def input
    @input.split('').to_a
  end
end

# module Attempt
#   def self.format(raw_attempt)
#     raw_attempt.chomp.chars.to_a
#   end
#
#   def self.valid?(attempt, potential_chars, expected_length)
#     return false unless attempt.length == expected_length
#     return false unless attempt.potential_chars == potential_chars
#     true
#   end
#
#   loop do
#     attempt = Attempt.format (raw_attempt)
#     if valid?
#     else
#       puts "Invalid guess, try again"
#     next
#   end
# end
