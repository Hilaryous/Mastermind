module Attempt
  def self.format(input)
    input.split('').to_a
  end

  def self.valid?(input, expected_length)
    if input.length != expected_length
      return false
    else
      true
    end
  end
end
